import org.modelix.model.api.INodeReference
import org.modelix.model.api.INodeReferenceSerializer

class ReferenceSerializer {
    companion object : INodeReferenceSerializer {
        override fun deserialize(serialized: String): INodeReference? {
            if (serialized.startsWith("r:")) {
                return MPSRemoteNodeReference(serialized)
            }
            return null
        }

        override fun serialize(ref: INodeReference): String? {
            return when (ref) {
                is MPSRemoteNodeReference -> "${ref.modelId}(unused)/${ref.nodeId}"
                else -> null
            }
        }
    }
}