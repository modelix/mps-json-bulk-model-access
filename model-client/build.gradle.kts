plugins {
    kotlin("multiplatform")
    kotlin("plugin.serialization")
    `maven-publish`
}

group = "org.modelix.mps-rest-model-access.client"
version = "0.1"

val ktor_version : String by project

repositories {
    mavenCentral()
    maven {
        url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr")
    }
    maven {
        name = "GitHubPackages"
        url = uri("https://maven.pkg.github.com/modelix/modelix")
        credentials {
            username = project.findProperty("gpr.user") as String? ?: System.getenv("USERNAME")
            password = project.findProperty("gpr.key") as String? ?: System.getenv("TOKEN")
        }
    }
}

kotlin {
    jvm()

    sourceSets {
        val commonMain by getting {
            dependencies {
                implementation("io.ktor:ktor-client-core:$ktor_version")
                implementation(project(":model-api"))
                implementation("org.modelix:model-api:2021.2.+")
                implementation("org.modelix:model-client:0.0.77")
                implementation("io.ktor:ktor-client-serialization:$ktor_version")
            }
        }

        val jvmMain by getting {
            dependencies {
                implementation("io.ktor:ktor-client-cio:$ktor_version")
            }
        }
    }
}