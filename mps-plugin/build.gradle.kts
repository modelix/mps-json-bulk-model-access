buildscript {
    repositories {
        maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
        mavenCentral()
    }

    dependencies {
        classpath("de.itemis.mps:mps-gradle-plugin:1.4.+")
    }
}

plugins {
    `maven-publish`
}

group = "org.modelix.mps-rest-model-access"
version = "0.1"

repositories {
    mavenCentral()
    maven { url = uri("https://projects.itemis.de/nexus/content/repositories/mbeddr") }
}

val server by configurations.creating
val mps by configurations.creating
val buildDependencies by configurations.creating
val mps_version : String by project

dependencies{
    mps("com.jetbrains:mps:$mps_version")
    server(project(":model-server"))
    buildDependencies("org.apache.ant:ant-junit:1.10.11")
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

val copyServer = tasks.create<Copy>("copyServer"){
    from(server)
    into("$projectDir/solutions/org.modelix.mps.rest.model.acess.mps.plugin/lib")
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
    }
}