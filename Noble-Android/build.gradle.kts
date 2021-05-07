plugins {
    id("com.android.application")
    kotlin("android")
}

dependencies {
    val koin_version = findProperty("koin_version")
    implementation(project(":shared"))
    implementation("com.google.android.material:material:1.3.0")
    implementation("androidx.appcompat:appcompat:1.2.0")
    implementation("androidx.constraintlayout:constraintlayout:2.0.4")
    implementation("androidx.navigation:navigation-fragment-ktx:2.3.5")
    implementation("androidx.navigation:navigation-ui-ktx:2.3.5")

    implementation("io.insert-koin:koin-core:3.0.1")
    implementation("io.insert-koin:koin-androidx-scope:3.0.1")
    implementation("io.insert-koin:koin-androidx-viewmodel:3.0.1")
    implementation("io.insert-koin:koin-androidx-fragment:3.0.1")

    testImplementation("junit:junit:4.13.2")
    testImplementation("io.mockk:mockk:1.10.0")
    testImplementation("io.insert-koin:koin-test:3.0.1")
    testImplementation("androidx.arch.core:core-testing:2.1.0")
    testImplementation("org.jetbrains.kotlinx:kotlinx-coroutines-test:1.4.2")
}

android {
    compileSdkVersion(30)
    defaultConfig {
        applicationId = "com.fallencosplay.noble_mp.Noble"
        minSdkVersion(24)
        targetSdkVersion(30)
        versionCode = 1
        versionName = "1.0"
    }
    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
        }
    }
    buildFeatures {
        viewBinding = true
        dataBinding = true
    }

    testOptions {
        unitTests.isIncludeAndroidResources = true
    }

    packagingOptions {
        exclude("META-INF/AL2.0")
        exclude("META-INF/LGPL2.1")
    }
}