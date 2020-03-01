//
//  AppDelegate.swift
//  App
//
//  Created by YourCompany on 01.03.2020.
//  Copyright © 2020 YourCompany. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navigationController = UINavigationController()
        navigationController.navigationBar.prefersLargeTitles = false
        navigationController.viewControllers = [
            MainViewController()
        ]
        
        let screenFrame = UIScreen.main.bounds
        self.window = UIWindow(frame: screenFrame)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}
