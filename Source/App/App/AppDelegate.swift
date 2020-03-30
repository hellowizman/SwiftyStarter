//
//  AppDelegate.swift
//  App
//
//  Created by Visuality on 30.03.2020.
//  Copyright © 2020 Igor Matyushkin. All rights reserved.
//

import UIKit
import Visuality
import Hammer

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let mainViewController = MainViewController.from(nib: .byClassName, inBundle: .byInstance(bundle: .main))
        
        let navigationController = UINavigationController().hmr.use { (navigationController) in
            navigationController.navigationBar.prefersLargeTitles = true
            navigationController.viewControllers = [
                mainViewController
            ]
        }.return
        
        self.window = UIWindow(frame: UIScreen.main.bounds).hmr.use({ (window) in
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
        }).return
        
        return true
    }
}
