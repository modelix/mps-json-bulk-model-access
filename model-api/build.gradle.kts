plugins {
    kotlin("multiplatform")
    kotlin("plugin.serialization")
    `maven-publish`
}

kotlin {
    jvm()
    js().browser()
    sourceSets {
        val commonMain by getting {
            dependencies {
                api("org.jetbrains.kotlinx:kotlinx-serialization-json:1.4.1")
                implementation(kotlin("stdlib-common"))
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
                username = project.findProperty("gpr.user") as? String ?: System.getenv("GITHUB_ACTOR")
                password = project.findProperty("gpr.key") as? String ?: System.getenv("GITHUB_TOKEN")
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