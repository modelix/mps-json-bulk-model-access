import org.modelix.model.api.*
import org.modelix.model.area.AbstractArea
import org.modelix.model.area.IAreaReference
import org.modelix.mps.rest.model.access.api.Model

class MPSRemoteModelArea(model : Model, val client : MPSRemoteClient): AbstractArea(){

    val modelId: String
    val modelName: String
    val roots : List<MPSRemoteNode>

    init {
        this.modelName = model.name
        this.modelId = model.modelId
        this.roots = model.roots.map { it.deserialize(this) }
    }

    override fun getReference(): IAreaReference {
        return MPSRemoteModelAreaReference(modelId)
    }

    override fun getRoot(): INode = MPSRemoteModel(this)

    override fun resolveConcept(ref: IConceptReference): IConcept? {
        TODO("Not yet implemented")
    }

    override fun resolveOriginalNode(ref: INodeReference): INode? {
        if(ref is MPSRemoteNodeReference){
            return if(ref.modelId == modelId){
                this.roots
                    .flatMap { it.getDescendants(true)
                        .filterIsInstance<MPSRemoteNode>() }
                    .find { it.id == ref.nodeId }
            }else{
                client.resolveReference(ref)
            }
        }
        return null
    }
}

data class MPSRemoteModelAreaReference(val modelId : String) : IAreaReference
