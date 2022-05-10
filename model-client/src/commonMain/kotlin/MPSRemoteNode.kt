import org.modelix.model.api.IConcept
import org.modelix.model.api.IConceptReference
import org.modelix.model.api.INode
import org.modelix.model.api.INodeReference
import org.modelix.model.area.IArea
import org.modelix.model.lazy.IConceptReferenceSerializer

class MPSRemoteNode(
    val parentArea : IArea,
    val id: String,
    val children: MutableMap<String, List<MPSRemoteNode>>,
    val properties: MutableMap<String, String?>,
    val references: MutableMap<String, INodeReference>,
    val role : String?,
    val conceptId : String
): INode {
    override val allChildren: Iterable<INode>
        get() = children.flatMap { it.value }
    override val concept: IConcept
        get() = IConceptReferenceSerializer.deserialize(conceptId,null)!!
    override val isValid: Boolean
        get() = TODO("Not yet implemented")
    override val parent: INode?
        get() = TODO("Not yet implemented")
    override val reference: INodeReference
        get() = TODO("Not yet implemented")
    override val roleInParent: String?
        get() = role

    override fun getPropertyRoles(): List<String> = properties.keys.toList()

    override fun getPropertyValue(role: String): String? = properties[role]

    override fun getReferenceRoles(): List<String> = references.keys.toList()

    override fun getReferenceTarget(role: String): INode? = references[role]?.resolveNode(parentArea)

    override fun getChildren(role: String?): Iterable<INode> {
        if (role != null){
            return children[role] ?: emptyList()
        }else{
            return children.flatMap { it.value }
        }
    }

    override fun getConceptReference(): IConceptReference? {
        TODO("Not yet implemented")
    }

    override fun getArea(): IArea = parentArea

    override fun addNewChild(role: String?, index: Int, concept: IConcept?): INode {
        TODO("Not yet implemented")
    }

    override fun moveChild(role: String?, index: Int, child: INode) {
        TODO("Not yet implemented")
    }

    override fun removeChild(child: INode) {
        TODO("Not yet implemented")
    }

    override fun setPropertyValue(role: String, value: String?) {
        TODO("Not yet implemented")
    }

    override fun setReferenceTarget(role: String, target: INode?) {
        TODO("Not yet implemented")
    }
}

class MPSRemoteNodeRerence : INodeReference {
    val modelId : String
    val nodeId : String

    constructor(modelId : String, nodeId : String){
        this.modelId = modelId
        this.nodeId = nodeId
    }

    constructor(nodePointer : String){
        val slash = nodePointer.lastIndexOf('/')
        val lParens = nodePointer.indexOf('(')

        this.modelId =
            if(lParens != -1) nodePointer.substring(0, lParens)
            else nodePointer.substring(0, slash)

        this.nodeId = nodePointer.substring(slash + 1)
    }

    override fun resolveNode(area: IArea?): INode? {
        return area?.resolveNode(this);
    }
}