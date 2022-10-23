buildscript {
    repositories {
        maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
        mavenCentral()
    }

    dependencies {
        classpath("de.itemis.mps:mps-gradle-plugin:1.9.+")
    }
}

plugins {
    `maven-publish`
}

val server by configurations.creating
val mps by configurations.creating
val buildDependencies by configurations.creating
val mps_version : String by project

dependencies{
    mps("com.jetbrains:mps:$mps_version")
    server(project(":model-server"))
    buildDependencies("org.apache.ant:ant-junit:1.10.12")
}

val mpsDir = File(buildDir,"mps")
val extractMps = tasks.create<Copy>("extractMps"){
    from({ mps.resolve().map { zipTree(it) } })
    into(mpsDir)
}

val dependencies = File(buildDir,"dependencies")
val copyDependencies = tasks.create<Copy>("copyDependencies") {
    from({ buildDependencies.resolve().map { zipTree(it) } })
    into(dependencies)
}

val copyServer = tasks.create<Sync>("copyServer"){
    from(server)
    rename {filename ->
        val ra = server.resolvedConfiguration.resolvedArtifacts.find { ra -> ra.file.name == filename }!!
        if (ra.classifier != null) {
            "${ra.name}-${ra.classifier}.${ra.extension}"
        } else {
            "${ra.name}.${ra.extension}"
        }
    }
    into("$projectDir/solutions/org.modelix.mps.rest.model.acess.plugin/lib")
}

ext["itemis.mps.gradle.ant.defaultScriptClasspath"] = buildDependencies.fileCollection { true }
ext["itemis.mps.gradle.ant.defaultScriptArgs"] = listOf("-Dmps_home=${mpsDir.absolutePath}")

val build = tasks.create<de.itemis.mps.gradle.BuildLanguages>("build"){
    dependsOn(copyServer,copyDependencies,extractMps)
    script = "$projectDir/build.xml"
}

val packagePlugin = tasks.register<Zip>("packagePlugin") {
    archiveFileName.set("mps-plugin.zip")
    destinationDirectory.set(layout.buildDirectory.dir("dist"))

    from("$buildDir/artifacts/mps-plugin")
}


publishing {
    publications {
        create<MavenPublication>("mps-plugin") {
            artifact(packagePlugin)
        }
    }
    repositories {
        mavenLocal()
        maven {
            name = "GitHubPackages"
            url = uri("https://maven.pkg.github.com/modelix/mps-rest-model-access")
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

