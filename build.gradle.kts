plugins {
    //trick: for the same plugin versions in all sub-modules
    alias(libs.plugins.androidApplication) apply(false)
    alias(libs.plugins.androidLibrary) apply(false)
    alias(libs.plugins.kotlinAndroid) apply(false)
    alias(libs.plugins.kotlinMultiplatform) apply(false)
    // KMP-native-coroutines
    id("com.google.devtools.ksp").version("1.9.21-1.0.16") apply(false)
    id("com.rickclephas.kmp.nativecoroutines").version("1.0.0-ALPHA-24") apply(false)
}
