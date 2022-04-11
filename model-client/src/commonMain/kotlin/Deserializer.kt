import org.modelix.model.area.IArea
import org.modelix.mps.rest.model.access.api.Child
import org.modelix.mps.rest.model.access.api.Node
import org.modelix.mps.rest.model.access.api.Reference

fun Node.deserialize(area: IArea, role: String? = null): MPSRemoteNode {
    return MPSRemoteNode(
        id = this.id,
        parentArea = area,
        children = this.children.groupBy {
            it.containmentLinkName
        }.mapValues {
            it.value.map {
                it.deserialize(area)
            }
        }.toMutableMap(),
        properties = this.properties.associate { Pair(it.name, it.value) }.toMutableMap(),
        references = this.references.associate { Pair(it.referenceLink,it.deserialize()) }.toMutableMap(),
        conceptId = this.conceptId,
        role = role
    )
}

fun Child.deserialize(area: IArea): MPSRemoteNode {
    return this.node.deserialize(area, this.containmentLinkName)
}

fun Reference.deserialize() : MPSRemoteNodeRerence{
    return MPSRemoteNodeRerence(this.targetNode)
}