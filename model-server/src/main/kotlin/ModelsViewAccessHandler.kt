package org.modelix.mps.rest.model.access.server

import io.netty.channel.Channel
import io.netty.handler.codec.http.*
import jetbrains.mps.smodel.SModelStereotype
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.jetbrains.mps.openapi.module.SRepository
import org.jetbrains.mps.openapi.persistence.PersistenceFacade
import org.modelix.mps.rest.model.access.api.ModelView
import org.modelix.mps.rest.model.access.server.respondBadRequest

class ModelsViewAccessHandler {
    companion object {
        private var init = false

        lateinit var repo: SRepository

        @JvmStatic
        fun isInitialised(): Boolean {
            return init;
        }

        @JvmStatic
        fun init(repo: SRepository) {
            this.repo = repo
            this.init = true
        }

        @JvmStatic
        fun handle(request: HttpRequest, queryStringDecoder: QueryStringDecoder, channel: Channel) {
            val path = queryStringDecoder.path();
            val method = request.method()

            val array = if (path.startsWith("/")) path.substring(1).split("/") else path.split("/")

            if (array.isEmpty() || array.size > 2) {
                respondBadRequest(request, channel)
                return;
            }

            val prefix = array[0]
            if (!ModelView.path.equals(prefix)) {
                respondBadRequest(request, channel)
                return;
            }

            when {
                array.size == 1 -> {
                    when (method) {
                        HttpMethod.GET -> {
                            var views: List<ModelView>? = null;
                            repo.modelAccess.runReadAction {
                                views = repo.modules.flatMap {
                                    it.models.filter { sModel -> !SModelStereotype.isDescriptorModel(sModel) }
                                        .map { sModel -> sModel.serializeView() }
                                }
                            }
                            if (views == null) {
                                respondInternalServerError(request, channel)
                            } else {
                                respondOk(request, channel, Json.encodeToString(views).encodeToByteArray())
                            }
                        }
                        else -> respondMethodNotAllowed(request, channel)
                    }
                }
                array.size == 2 -> {
                    when (method) {
                        HttpMethod.GET -> {
                            val id = array[1]
                            var model: ModelView? = null

                            repo.modelAccess.runReadAction {
                                val modelId = PersistenceFacade.getInstance().createModelId(id)
                                model = repo.getModel(modelId)?.serializeView()
                            }

                            if (model == null) {
                                respondInternalServerError(request, channel, "Couldn't find model with id $id")
                            } else {
                                respondOk(request, channel, Json.encodeToString(model).encodeToByteArray())
                            }
                        }
                        else -> respondMethodNotAllowed(request, channel)
                    }
                }
            }
        }
    }
}