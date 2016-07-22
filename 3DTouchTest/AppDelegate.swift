//
//  AppDelegate.swift
//  3DTouchTest
//
//  Created by 成璐飞 on 16/7/22.
//  Copyright © 2016年 成璐飞. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        if (launchOptions?[UIApplicationLaunchOptionsShortcutItemKey] != nil) {
            let shortcutItem = launchOptions![UIApplicationLaunchOptionsShortcutItemKey] as! UIApplicationShortcutItem
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let nav = storyboard.instantiateViewControllerWithIdentifier("nav") as! UINavigationController
            switch shortcutItem.type {
            case "0":
                let previewVC = storyboard.instantiateViewControllerWithIdentifier("preview")
                nav.pushViewController(previewVC, animated: true)
                break
            case "1":
                let commitVC = storyboard.instantiateViewControllerWithIdentifier("commit")
                nav.pushViewController(commitVC, animated: false)
                break
            default:
                break
            }
        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        print(shortcutItem.type)
        let nav = storyboard.instantiateViewControllerWithIdentifier("nav") as! UINavigationController
        switch shortcutItem.type {
        case "0":
            let previewVC = storyboard.instantiateViewControllerWithIdentifier("preview")
            self.window?.rootViewController? = nav
            nav.pushViewController(previewVC, animated: false)
            completionHandler(true)
            break
        case "1":
            let commitVC = storyboard.instantiateViewControllerWithIdentifier("commit")
            self.window?.rootViewController? = nav
            nav.pushViewController(commitVC, animated: false)
            completionHandler(true)
            break
        default:
            break
        }
    }


}

