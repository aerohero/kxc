//
//  AppDelegate.swift
//  AppLifeCycle
//
//  Created by Sean on 1/10/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var sharedData = 0

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(self, #function)
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(self, #function)
        
        // kxc: 앱을 실행할 때 한번만 실행하면 되는 코드들을 여기에서 실행시키면 된다.
        
        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print(self, #function)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print(self, #function)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print(self, #function)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print(self, #function)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print(self, #function)
    }
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        print(self, #function)
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        print(self, #function)
    }


}

