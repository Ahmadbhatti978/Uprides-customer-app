import Flutter
import UIKit
import GoogleMaps                                          // Add this import
import app_links

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {


   // ✅ Check for initial deep link
    if let url = AppLinks.shared.getLink(launchOptions: launchOptions) {
      AppLinks.shared.handleLink(url: url)
      return true // prevent propagation to other plugins
    }


    GeneratedPluginRegistrant.register(with: self)

    // TODO: Add your Google Maps API key
    GMSServices.provideAPIKey("AIzaSyARa-NOfNmh-q2d097J0chrSUOjabg9EGc")      

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
