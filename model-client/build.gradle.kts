import org.jetbrains.kotlin.frontend.java.di.createContainerForLazyResolveWithJava

plugins {
    kotlin("multiplatform")
    kotlin("plugin.serialization")
    `maven-publish`
    `java-library`
}

group = "org.modelix.mps-rest-model-access"
version = "1.2"

val ktor_version : String by project

val user = project.findProperty("gpr.user") as String? ?: System.getenv("USERNAME")
val key = project.findProperty("gpr.key") as String? ?: System.getenv("TOKEN")

repositories {
    maven {
        name = "GitHubPackages"
        url = uri("https://maven.pkg.github.com/modelix/model-api")
        credentials {
            username = user
            password = key
        }
    }
    maven {
        name = "GitHubPackages"
        url = uri("https://maven.pkg.github.com/modelix/modelix")
        credentials {
            username = user
            password = key
        }
    }
    mavenCentral()
    maven {
        url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr")
    }
}



kotlin {
    jvm() {

        java {
            sourceCompatibility = JavaVersion.VERSION_11
            targetCompatibility = JavaVersion.VERSION_11
        }
    }

    sourceSets {
        val commonMain by getting {
            dependencies {
                api("io.ktor:ktor-client-core:$ktor_version")
                api(project(":model-api"))
                api("org.modelix:model-api:1.0.2")
                api("org.modelix:model-client:0.0.55")
                api("io.ktor:ktor-client-serialization:$ktor_version")
            }
        }

        val jvmMain by getting {
            dependencies {
                implementation("io.ktor:ktor-client-cio:$ktor_version")
            }

        }
    }


}

publishing {
    repositories {
        mavenLocal()
        maven {
            name = "GitHubPackages"
            url = uri("https://maven.pkg.github.com/modelix/mps-rest-model-access")
            credentials {
                username = user
                password = key
            }
        }
    }
}
