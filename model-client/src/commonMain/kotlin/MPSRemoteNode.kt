import org.modelix.model.api.IConcept
import org.modelix.model.api.IConceptReference
import org.modelix.model.api.INode
import org.modelix.model.api.INodeReference
import org.modelix.model.area.IArea
import org.modelix.model.lazy.IConceptReferenceSerializer

class MPSRemoteNode(
    val parentArea: MPSRemoteModelArea,
    val id: String,
    val children: MutableMap<String, List<MPSRemoteNode>>,
    val properties: MutableMap<String, String?>,
    val references: MutableMap<String, INodeReference>,
    val role: String?,
    val conceptId: String,
    val parentId: String? = null
) : INode {
    override val allChildren: Iterable<INode>
        get() = children.flatMap { it.value }
    override val concept: IConcept
        get() = IConceptReferenceSerializer.deserialize(conceptId, null)!!
    override val isValid: Boolean
        get() = true
    override val parent: INode?
        get() = parentId?.let { MPSRemoteNodeReference(parentArea.modelId, parentId).resolveNode(this.parentArea) }
    override val reference: INodeReference
        get() = MPSRemoteNodeReference(parentArea.modelId, id)
    override val roleInParent: String?
        get() = role

    override fun getPropertyRoles(): List<String> = properties.keys.toList()
    override fun equals(other: Any?): Boolean {
        if (other is MPSRemoteNode) {
            return this.reference == other.reference
        }
        return false
    }

    override fun getPropertyValue(role: String): String? = properties[role]

    override fun getReferenceRoles(): List<String> = references.keys.toList()

    override fun getReferenceTarget(role: String): INode? = references[role]?.resolveNode(parentArea)

    override fun getChildren(role: String?): Iterable<INode> {
        return if (role != null) {
            children[role] ?: emptyList()
        } else {
            children.flatMap { it.value }
        }
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

    override fun hashCode(): Int {
        var result = parentArea.hashCode()
        result = 31 * result + id.hashCode()
        return result
    }
}

class MPSRemoteNodeReference : INodeReference {
    val modelId: String
    val nodeId: String

    constructor(modelId: String, nodeId: String) {
        this.modelId = modelId
        this.nodeId = nodeId
    }

    override fun equals(other: Any?): Boolean {
        if (other is MPSRemoteNodeReference) {
            return this.nodeId == other.nodeId && this.modelId == other.modelId
        }
        return false
    }

    constructor(nodePointer: String) {
        val slash = nodePointer.lastIndexOf('/')
        val lParens = nodePointer.indexOf('(')

        this.modelId =
            if (lParens != -1) nodePointer.substring(0, lParens)
            else nodePointer.substring(0, slash)

        this.nodeId = nodePointer.substring(slash + 1)
    }

    override fun resolveNode(area: IArea?): INode? {
        return area?.resolveNode(this);
    }

    override fun hashCode(): Int {
        var result = modelId.hashCode()
        result = 31 * result + nodeId.hashCode()
        return result
    }
}