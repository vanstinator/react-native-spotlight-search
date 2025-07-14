import ExpoModulesCore
import CoreSpotlight

public class SpotlightAppDelegateSubscriber: ExpoAppDelegateSubscriber {
  public func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
    // Forward the Spotlight Search event to NotificationCenter, similar to the Objective-C implementation
    NotificationCenter.default.post(name: NSNotification.Name("handleContinueUserActivity"), object: nil, userInfo: ["userActivity": userActivity])
    return true
  }
} 