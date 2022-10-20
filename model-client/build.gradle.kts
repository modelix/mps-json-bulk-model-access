import org.jetbrains.kotlin.frontend.java.di.createContainerForLazyResolveWithJava

plugins {
    kotlin("multiplatform")
    kotlin("plugin.serialization")
    `maven-publish`
    `java-library`
}

group = "org.modelix.mps-rest-model-access"
version = "1.3"

val ktor_version : String by project

val githubUser: String = project.findProperty("gpr.user") as String? ?: System.getenv("GITHUB_ACTOR")
val githubToken: String = project.findProperty("gpr.key") as String? ?: System.getenv("GITHUB_TOKEN")


repositories {
    maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps") }
    mavenCentral()
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
                implementation("io.ktor:ktor-client-core:$ktor_version")
                implementation(project(":model-api"))
                implementation("org.modelix:model-api:1.3.1")
                implementation("org.modelix:model-client:1.3.1")
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

publishing {
    repositories {
        mavenLocal()
        maven {
            name = "GitHubPackages"
            url = uri("https://maven.pkg.github.com/modelix/mps-rest-model-access")
            credentials {
                username = githubUser
                password = githubToken
            }
        }
    }
}
