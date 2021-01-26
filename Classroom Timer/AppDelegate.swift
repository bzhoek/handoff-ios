import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    return true
  }

  func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error) {
    print("ios didFail \(userActivityType)")
  }

  func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity) {
    print("ios didUpdate \(userActivity)")
  }

  func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool {
    print("ios willContinue \(userActivityType)")
    return false
  }

  func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {

    print("ios continue \(userActivity)")
    return true
  }

}

