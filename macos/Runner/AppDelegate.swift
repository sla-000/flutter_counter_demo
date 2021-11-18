import Cocoa
import FlutterMacOS
import UIKit
import Firebase

@UIApplicationMain
@NSApplicationMain
class AppDelegate: FlutterAppDelegate, UIResponder, UIApplicationDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
      [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
