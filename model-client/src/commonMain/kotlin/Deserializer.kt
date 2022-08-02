import org.modelix.mps.rest.model.access.api.Child
import org.modelix.mps.rest.model.access.api.Node
import org.modelix.mps.rest.model.access.api.Reference

fun Node.deserialize(area: MPSRemoteModelArea, role: String? = null, parentId: String? = null): MPSRemoteNode {
    return MPSRemoteNode(
        id = this.id,
        parentArea = area,
        children = this.children.groupBy {
            it.containmentLinkName
        }.mapValues {
            it.value.map {
                it.deserialize(area, this.id)
            }
        }.toMutableMap(),
        properties = this.properties.associate { Pair(it.name, it.value) }.toMutableMap(),
        references = this.references.associate { Pair(it.referenceLink,it.deserialize()) }.toMutableMap(),
        conceptId = this.conceptId,
        role = role,
        parentId = parentId
    )
}

fun Child.deserialize(area: MPSRemoteModelArea, parentId: String? = null): MPSRemoteNode {
    return this.node.deserialize(area, this.containmentLinkName, parentId)
}

fun Reference.deserialize() : MPSRemoteNodeReference{
    return MPSRemoteNodeReference(this.targetNode)
}