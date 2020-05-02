//
//  AppDelegate.swift
//  MyAttendanceManagementApp
//
//  Created by Harshvardhan Patidar on 13/04/20.
//  Copyright © 2020 Harshvardhan Patidar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UINavigationBar.appearance().barTintColor = UIColor(red: 245.0/255.0, green: 38.0/255.0, blue: 80.0/255.0, alpha: 1.0)
        //UINavigationBar.appearance().backgroundColor = UIColor.systemPink
        let attributes = [NSAttributedString.Key.font: UIFont(name: "Helvetica", size: 25)!]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        
//        var window = UIWindow()
//        window = UIWindow(frame: UIScreen.main.bounds)
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        var controller: HomeViewController? = nil
//        #if NewHomeScreen
//        controller = storyboard.instantiateViewController(withIdentifier: "homeViewController")
//        #else
//        controller = storyboard.instantiateViewController(withIdentifier: "homeViewController") as? HomeViewController
//        #endif
//        window.rootViewController = controller
//        window.makeKeyAndVisible()
//        
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

