import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm")
    java
}

val mps by configurations.creating
val mps_version: String by project

dependencies {
    implementation(kotlin("stdlib"))
    implementation(project(":model-api"))
    compileOnly("io.netty:netty-all:4.1.87.Final")
    mps("com.jetbrains:mps:$mps_version")
    compileOnly("com.jetbrains:mps-openapi:$mps_version")
    compileOnly("com.jetbrains:mps-core:$mps_version")
    compileOnly("com.jetbrains:mps-platform:$mps_version")
    compileOnly("com.jetbrains:platform-api:$mps_version")
    compileOnly("com.jetbrains:extensions:$mps_version")
    compileOnly("com.jetbrains:util:$mps_version")
    compileOnly(files(mps.resolve().flatMap { zipTree(it).files }))
}
