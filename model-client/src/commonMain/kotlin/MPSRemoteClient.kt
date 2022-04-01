import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.features.*
import io.ktor.client.features.json.*
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*
import io.ktor.utils.io.core.*
import org.modelix.model.api.INode
import org.modelix.model.api.INodeReference
import org.modelix.mps.rest.model.access.api.Model
import org.modelix.mps.rest.model.access.api.ModelView

class MPSRemoteClient(val host: String, val port: Int) {

    val areas = mutableMapOf<String, MPSRemoteModelArea>()

    private fun client(): HttpClient {
        return HttpClient {
            defaultRequest {
                method = HttpMethod.Get
                host = this@MPSRemoteClient.host
                port = this@MPSRemoteClient.port
            }
            install(JsonFeature)
        }
    }

    suspend fun getViewModels(): List<ModelView> {
        client().use {
            val response: HttpResponse = it.get {
                url {
                    path(ModelView.path)
                }
            }

            if (response.status == HttpStatusCode.OK) {
                return response.receive()
            } else {
                //todo: log something here
                return emptyList()
            }
        }
    }

    suspend fun loadModelArea(modelId: String): MPSRemoteModelArea? {
        var modelArea: MPSRemoteModelArea? = null

        // TODO: if map has model return.

        client().use {
            val response: HttpResponse = it.get {
                url {
                    path(Model.path, modelId)
                }
            }

            if (response.status == HttpStatusCode.OK) {
                val model = response.receive<Model>()
                modelArea = MPSRemoteModelArea(model, this)
                areas[modelId] = modelArea!!
            }
        }
        return modelArea
    }

    fun resolveReference(ref: INodeReference): INode? {
        if (ref is MPSRemoteNodeRerence) {
            if (areas.contains(ref.modelId)) {
                return areas[ref.modelId]?.resolveNode(ref)
            } else {
                throw ModelNotLoadedException(ref.modelId)
            }
        }
        //todo: return other crap
        return null
    }

}

class ModelNotLoadedException(val modelId: String) : Throwable() {

}

class ModelNotFoundException(val modelId: String) : Throwable() {

}