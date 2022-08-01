import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm")
    java
}

group = "org.modelix.mps-rest-model-access.server"
version = "0.2"

repositories {
    mavenCentral()
    maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
}

val mps by configurations.creating
val mps_version: String by project

dependencies {
    implementation(kotlin("stdlib"))
    implementation(project(":model-api"))
    compileOnly("io.netty:netty-all:4.1.52.Final")
    mps("com.jetbrains:mps:$mps_version")
    compileOnly("com.jetbrains:mps-openapi:$mps_version")
    compileOnly("com.jetbrains:mps-core:$mps_version")
    compileOnly("com.jetbrains:mps-platform:$mps_version")
    compileOnly("com.jetbrains:platform-api:$mps_version")
    compileOnly("com.jetbrains:extensions:$mps_version")
    compileOnly("com.jetbrains:util:$mps_version")
    compileOnly(files(mps.resolve().flatMap { zipTree(it).files }))
}

