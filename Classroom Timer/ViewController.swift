import UIKit

let ActivityType = "com.zilverline.classroom.timer-running"

class ViewController: UIViewController {

  var keyStore: NSUbiquitousKeyValueStore?

  override func viewDidLoad() {
    super.viewDidLoad()

    keyStore = NSUbiquitousKeyValueStore()

    NotificationCenter.default.addObserver(self, selector: #selector(onUbiquitousKeyValueStoreDidChangeExternally(notification:)), name: NSUbiquitousKeyValueStore.didChangeExternallyNotification, object: keyStore)
  }

  @objc func onUbiquitousKeyValueStoreDidChangeExternally(notification: Notification) {
    print("changed \(keyStore?.object(forKey: "timer"))")
  }

  @IBAction func activity(_ sender: Any) {
    startActivity()
  }

  func startActivity() {
    let activity = NSUserActivity(activityType: ActivityType)
    activity.title = "Running Timer"
    self.userActivity = activity;

    keyStore?.set(Date(), forKey: "timer")
    keyStore?.synchronize()
    print(keyStore?.object(forKey: "timer"))
  }

  override func updateUserActivityState(_ activity: NSUserActivity) {
    super.updateUserActivityState(activity)

    activity.addUserInfoEntries(from: ["Time": NSDate()])
  }

}

