import org.modelix.model.api.IConcept
import org.modelix.model.api.IConceptReference
import org.modelix.model.api.INode
import org.modelix.model.api.INodeReference
import org.modelix.model.area.AbstractArea
import org.modelix.model.area.IAreaReference
import org.modelix.mps.rest.model.access.api.Model

class MPSRemoteModelArea(model : Model, val client : MPSRemoteClient): AbstractArea(){

    val modelId: String
    val children : List<MPSRemoteNode>

    init {
        this.modelId = model.modelId
        this.children = model.roots.map { it.deserialize(this) }
    }

    override fun getReference(): IAreaReference {
        return MPSRemoteModelAreaReference(modelId)
    }

    override fun getRoot(): INode = MPSRemoteModel(this)

    override fun resolveConcept(ref: IConceptReference): IConcept? {
        TODO("Not yet implemented")
    }

    override fun resolveOriginalNode(ref: INodeReference): INode? {
        if(ref is MPSRemoteNodeRerence){
            if(ref.modelId == modelId){
                return this.children.find { it.id == ref.nodeId }
            }else{
                return client.resolveReference(ref)
            }
        }
        return null;
    }
}

data class MPSRemoteModelAreaReference(val modelId : String) : IAreaReference
