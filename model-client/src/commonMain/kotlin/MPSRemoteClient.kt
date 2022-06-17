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
                    path(ModelView.prefix,ModelView.path)
                }
            }

            when (response.status) {
                HttpStatusCode.OK -> {
                    return response.receive()
                }
                else -> {
                    throw MPSRemoteClientException("Something failed when loading models view", response.status.value ,response.readText())
                }
            }
        }
    }

    suspend fun loadModelArea(modelId: String): MPSRemoteModelArea? {
        client().use {
            val response: HttpResponse = it.get {
                url {
                    path(Model.prefix,Model.path, modelId)
                }
            }

            when (response.status) {
                HttpStatusCode.OK -> {
                    areas[modelId] = MPSRemoteModelArea(response.receive(), this)
                }
                HttpStatusCode.NotFound -> {
                    throw ModelNotFoundException(modelId)
                }
                else -> {
                    throw MPSRemoteClientException("Something failed when loading model '$modelId'", response.status.value ,response.readText())
                }
            }
        }

        return areas[modelId]
    }

    fun resolveReference(ref: INodeReference): INode? {
        if (ref is MPSRemoteNodeRerence) {
            if (areas.contains(ref.modelId)) {
                return areas[ref.modelId]?.resolveNode(ref)
            } else {
                throw ModelNotLoadedException(ref.modelId)
            }
        }
        return null
    }

}

class ModelNotLoadedException(val modelId: String) : Throwable()

class ModelNotFoundException(val modelId: String) : Throwable()

class MPSRemoteClientException(val msg : String, val statusCode : Int, val response : String) : Throwable()