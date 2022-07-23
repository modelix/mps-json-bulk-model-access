import org.modelix.model.api.IConcept
import org.modelix.model.api.IConceptReference
import org.modelix.model.api.INode
import org.modelix.model.api.INodeReference
import org.modelix.model.area.IArea

class MPSRemoteModel(
    val area: MPSRemoteModelArea,
) : INode{
    override val allChildren: Iterable<INode>
        get() =  area.roots
    override val concept: IConcept?
        get() = TODO("Not yet implemented")
    override val isValid: Boolean
        get() = false
    override val parent: INode?
        get() = null
    override val reference: INodeReference
        get() = TODO("Not yet implemented")
    override val roleInParent: String?
        get() = null


    override fun getArea(): IArea = area;

    override fun getChildren(role: String?): Iterable<INode> = area.roots


    override fun getPropertyRoles(): List<String> = emptyList()

    override fun getPropertyValue(role: String): String? = null

    override fun getReferenceRoles(): List<String> = emptyList()

    override fun getReferenceTarget(role: String): INode? = null

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