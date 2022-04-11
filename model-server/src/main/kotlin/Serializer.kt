package org.modelix.mps.rest.model.access.server

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.smodel.SNodePointer
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapterById
import jetbrains.mps.smodel.adapter.structure.link.SContainmentLinkAdapterById
import jetbrains.mps.smodel.adapter.structure.property.SPropertyAdapterById
import jetbrains.mps.smodel.adapter.structure.ref.SReferenceLinkAdapterById
import jetbrains.mps.smodel.adapter.structure.types.SEnumerationAdapter
import jetbrains.mps.smodel.adapter.structure.types.SPrimitiveTypes
import org.jetbrains.mps.openapi.language.SDataType
import org.jetbrains.mps.openapi.language.SProperty
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SReference
import org.modelix.mps.rest.model.access.api.*


fun SNode.serialize() : Node {
    return Node(
        id = this.nodeId.toString(),
        conceptId = "mps:${(this.concept as SConceptAdapterById).id.serialize()}",
        properties = this.properties.map { it.serialize(this) },
        children = this.children.map { Child((it.containmentLink as SContainmentLinkAdapterById).serialize(), it.serialize()) },
        references = this.references.map { it.serialize()}
    )
}

fun SProperty.serialize(node : SNode) : Property {
    return Property(
        (this as SPropertyAdapterById).serialize(),
        this.name,
        this.value(node)
    )
}

fun SProperty.value(node : SNode) : String?{
    return when(type){
        SPrimitiveTypes.INTEGER -> SPropertyOperations.getInteger(node,this).toString()
        SPrimitiveTypes.BOOLEAN -> SPropertyOperations.getBoolean(node,this).toString()
        is SEnumerationAdapter -> SPropertyOperations.getEnum(node,this).name
        else -> SPropertyOperations.getString(node,this)
    }
}

fun SReference.serialize() : Reference {
    return Reference(
        (this.link as SReferenceLinkAdapterById).serialize(),
        SNodePointer.serialize(targetNodeReference),
    )
}

fun SModel.serialize() : Model {
    return Model(
        this.modelId.toString(),
        this.name.longName,
        this.rootNodes.map { it.serialize() }
    )
}

fun SModel.serializeView() : ModelView{
    return ModelView(this.modelId.toString(),this.name.longName)
}