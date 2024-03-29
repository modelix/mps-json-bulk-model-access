import org.jetbrains.kotlin.frontend.java.di.createContainerForLazyResolveWithJava

plugins {
    kotlin("multiplatform")
    kotlin("plugin.serialization")
    `maven-publish`
    `java-library`
}

val ktor_version : String by project
val modelixCoreVersion : String by project

val githubUser: String = project.findProperty("gpr.user") as String? ?: System.getenv("GITHUB_ACTOR")
val githubToken: String = project.findProperty("gpr.key") as String? ?: System.getenv("GITHUB_TOKEN")

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
                implementation("io.ktor:ktor-client-serialization:$ktor_version")
                implementation("io.ktor:ktor-client-content-negotiation:$ktor_version")
                implementation("io.ktor:ktor-serialization-kotlinx-json:$ktor_version")

                implementation(project(":model-api"))
                implementation("org.modelix:model-api:$modelixCoreVersion")
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
            url = uri("https://maven.pkg.github.com/modelix/mps-json-bulk-model-access")
            credentials {
                username = githubUser
                password = githubToken
            }
        }
        if (project.hasProperty("artifacts.itemis.cloud.user")) {
            maven {
                name = "itemis"
                url = if (version.toString().contains("SNAPSHOT"))
                    uri("https://artifacts.itemis.cloud/repository/maven-mps-snapshots/")
                else
                    uri("https://artifacts.itemis.cloud/repository/maven-mps-releases/")
                credentials {
                    username = project.findProperty("artifacts.itemis.cloud.user").toString()
                    password = project.findProperty("artifacts.itemis.cloud.pw").toString()
                }
            }
        }
    }
}
