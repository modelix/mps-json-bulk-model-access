package org.modelix.mps.rest.model.access.api

import kotlinx.serialization.Serializable

@Serializable
data class Property (
    val id : String,
    val name : String,
    val value : String?
)

@Serializable
data class Child (
    val containmentLinkName : String,
    val node : Node
)

@Serializable
data class Reference (
    val referenceLink : String,
    val targetNode : String
)

@Serializable
data class Node(
    val id : String,
    val concept : String,
    val properties : List<Property>,
    val children : List<Child>,
    val references : List<Reference>
)

@Serializable
data class Model(
    val modelId : String,
    val name : String,
    val roots : List<Node>
){
    companion object{
        val path : String = "models"
    }
}

@Serializable
data class ModelView(val modelId : String, val name : String){
    companion object{
        val path : String = "modelsview"
    }
}