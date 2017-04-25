//
//  AppDelegate.swift
//  DouYuTV
//
//  Created by shanyazhou on 2017/4/25.
//  Copyright © 2017年 SYZ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //修改tabbar的颜色
        UITabBar.appearance().tintColor = UIColor.orange
        
        return true
    }


}

