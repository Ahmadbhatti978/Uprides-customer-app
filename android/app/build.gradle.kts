import java.util.Properties
import java.io.FileInputStream

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

plugins {
    id("com.android.application")
    id("com.google.gms.google-services")
    id("com.google.firebase.crashlytics")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}



android {

    namespace = "com.bold.customer"
    compileSdk = 36
    ndkVersion = "27.0.12077973"
 //lint {
  //      disable = 'NullSafeMutableLiveData'
  //  }
     compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
        isCoreLibraryDesugaringEnabled = true
    }
dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}
    kotlinOptions {
        jvmTarget = "11"
    }

    defaultConfig {   
        multiDexEnabled = true
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.bold.customer"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdkVersion(flutter.minSdkVersion)
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }
signingConfigs {
    create("release") {
        storeFile = file(keystoreProperties["storeFile"] as String)
        storePassword = keystoreProperties["storePassword"] as String
        keyAlias = keystoreProperties["keyAlias"] as String
        keyPassword = keystoreProperties["keyPassword"] as String
    }
}


    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.

            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true // Set to true if you want ProGuard/R8
            isShrinkResources = true
        }
    }

   packaging {
        resources {
       jniLibs {
            useLegacyPackaging = false
    excludes += listOf(
                "lib/armeabi-v7a/libagora_clear_vision_extension.so",
                "lib/arm64-v8a/libagora_clear_vision_extension.so", // Video Enhancement
                "lib/armeabi-v7a/libagora_content_inspect_extension.so",
                "lib/arm64-v8a/libagora_content_inspect_extension.so", // Local Screenshot Upload
                "lib/armeabi-v7a/libagora_pvc_extension.so",
                "lib/arm64-v8a/libagora_pvc_extension.so", // Perceptual Video Coding
                "lib/armeabi-v7a/libagora_segmentation_extension.so",
                "lib/arm64-v8a/libagora_segmentation_extension.so", // Virtual Background
                "lib/armeabi-v7a/libagora_face_detection_extension.so",
                "lib/arm64-v8a/libagora_face_detection_extension.so", // Face Detection
                "lib/armeabi-v7a/libagora_face_capture_extension.so",
                "lib/arm64-v8a/libagora_face_capture_extension.so", // Face Capture
                "lib/armeabi-v7a/libagora_super_resolution_extension.so",
                "lib/arm64-v8a/libagora_super_resolution_extension.so", // Super Resolution
                "lib/armeabi-v7a/libagora_screen_capture_extension.so",
                "lib/arm64-v8a/libagora_screen_capture_extension.so", // Screen Sharing
                "lib/armeabi-v7a/libagora_video_quality_analyzer_extension.so",
                "lib/arm64-v8a/libagora_video_quality_analyzer_extension.so", // Video Quality Analyzer
                "lib/armeabi-v7a/libagora_video_encoder_extension.so",
                "lib/arm64-v8a/libagora_video_encoder_extension.so", // Video Encoding
                "lib/armeabi-v7a/video_enc.so",
                "lib/arm64-v8a/video_enc.so",
                "lib/armeabi-v7a/libagora_video_decoder_extension.so",
                "lib/arm64-v8a/libagora_video_decoder_extension.so", // Video Decoding
                "lib/armeabi-v7a/video_dec.so",
                "lib/arm64-v8a/video_dec.so",
                "lib/armeabi-v7a/libagora_video_av1_encoder_extension.so",
                "lib/arm64-v8a/libagora_video_av1_encoder_extension.so", // AV1 Stream Encoding
                "lib/armeabi-v7a/libagora_video_av1_decoder_extension.so",
                "lib/arm64-v8a/libagora_video_av1_decoder_extension.so", // AV1 Stream Decoding
                // Audio extensions (excluded unless needed)
                "lib/armeabi-v7a/libagora_ai_echo_cancellation_extension.so",
                "lib/arm64-v8a/libagora_ai_echo_cancellation_extension.so", // AI Echo Cancellation
                "lib/armeabi-v7a/libagora_ai_echo_cancellation_ll_extension.so",
                "lib/arm64-v8a/libagora_ai_echo_cancellation_ll_extension.so", // Low-Latency AI Echo Cancellation
                "lib/armeabi-v7a/libagora_audio_beauty_extension.so",
                "lib/arm64-v8a/libagora_audio_beauty_extension.so", // Audio Beauty
                "lib/armeabi-v7a/libagora_spatial_audio_extension.so",
                "lib/arm64-v8a/libagora_spatial_audio_extension.so", // Spatial Audio
                "lib/armeabi-v7a/libagora_drm_loader_extension.so",
                "lib/arm64-v8a/libagora_drm_loader_extension.so", // Copyright Music (pre-4.3.0)
                "lib/armeabi-v7a/libagora_udrm3_extension.so",
                "lib/arm64-v8a/libagora_udrm3_extension.so" // Copyright Music (pre-4.3.0)
            )}
        }
    }
}

flutter {
    source = "../.."
}
