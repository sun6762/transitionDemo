//
//  AppDelegate.swift
//  transitionDemo
//
//  Created by bobo on 2021/9/9.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.frame = UIScreen.main.bounds
        window?.rootViewController = EPAppContainerManager.shared.principalTabBarController
        window?.makeKeyAndVisible()
        EPAppContainerManager.shared.currentVC = EPAppContainerManager.shared.principalTabBarController
        
        return true
    }

    // MARK: UISceneSession Lifecycle
    
}

