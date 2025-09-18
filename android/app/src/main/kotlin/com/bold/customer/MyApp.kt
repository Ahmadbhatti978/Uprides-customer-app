package com.bold.customer
import android.app.Application
import io.maido.intercom.IntercomFlutterPlugin

class MyApp : Application() {
  override fun onCreate() {
    super.onCreate()

    // Initialize the Intercom SDK here also as Android requires to initialize it in the onCreate of
    // the application.
    IntercomFlutterPlugin.initSdk(this, appId = "iu9cey87", androidApiKey = "android_sdk-2f1d8ba99f6b7d9a481d2631f89de3f9ee440489")
  }
}
