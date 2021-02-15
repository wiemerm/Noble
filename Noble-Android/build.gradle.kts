plugins {
    id("com.android.application")
    kotlin("android")
}

dependencies {
    val koin_version = findProperty("koin_version")
    implementation(project(":shared"))
    implementation("com.google.android.material:material:1.2.1")
    implementation("androidx.appcompat:appcompat:1.2.0")
    implementation("androidx.constraintlayout:constraintlayout:2.0.2")
    implementation("androidx.navigation:navigation-fragment-ktx:2.3.3")
    implementation("androidx.navigation:navigation-ui-ktx:2.3.3")
    implementation("androidx.navigation:navigation-dynamic-features-fragment:2.3.3")
    implementation("com.google.android.material:material:1.2.1")
    implementation("org.koin:koin-gradle-plugin:$koin_version")
    implementation("org.koin:koin-android:$koin_version")
    implementation("org.koin:koin-androidx-scope:$koin_version")
    implementation("org.koin:koin-test:$koin_version")
    androidTestImplementation("androidx.navigation:navigation-testing:2.3.3")
}

android {
    compileSdkVersion(29)
    defaultConfig {
        applicationId = "com.fallencosplay.noble_mp.Noble"
        minSdkVersion(24)
        targetSdkVersion(29)
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
    }
}