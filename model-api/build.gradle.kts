plugins {
    kotlin("multiplatform")
    kotlin("plugin.serialization")
}

group = "org.modelix.mps-rest-model-access.api"
version = "0.1"

repositories {
    mavenCentral()
}

kotlin {
    jvm()
    js().browser()
    sourceSets {
        val commonMain by getting {
            dependencies {
                api("org.jetbrains.kotlinx:kotlinx-serialization-json:1.3.2")
                implementation(kotlin("stdlib-common"))
            }
        }
    }
}