plugins {
    alias(libs.plugins.spring.boot)        apply false
    alias(libs.plugins.spring.dependency.management) apply false
}

allprojects {
    group   = "com.burmalda.vsu"
    version = "0.0.1-SNAPSHOT"

    repositories {
        mavenCentral()
    }
}

subprojects {
    apply(plugin = "java")

    extensions.configure<JavaPluginExtension> {
        sourceCompatibility = JavaVersion.VERSION_25
        targetCompatibility = JavaVersion.VERSION_25
    }
}
