plugins {
    kotlin("multiplatform") version "1.7.22" apply false
    kotlin("plugin.serialization") version "1.7.22" apply false
    id("com.palantir.git-version") version "0.15.0"
}

group = "org.modelix.mps-json-bulk-model-access"
version = computeVersion()

println("Version: $version")
println("GPR user: " + project.findProperty("gpr.user") as? String ?: System.getenv("GITHUB_ACTOR"))

fun computeVersion(): Any {
    val versionFile = file("version.txt")
    val gitVersion: groovy.lang.Closure<String> by extra
    var version = if (versionFile.exists()) versionFile.readText().trim() else gitVersion()
    if (!versionFile.exists() && "true" != project.findProperty("ciBuild")) {
        version = "$version-SNAPSHOT"
    }
    return version
}

subprojects {
    apply(plugin = "maven-publish")
    version = rootProject.version
    group = rootProject.group

    repositories {
        maven { url = uri("https://artifacts.itemis.cloud/repository/maven-mps/") }
        mavenCentral()
    }
}
