//
//  MainViewController.swift
//  DouYuTV
//
//  Created by shanyazhou on 2017/4/25.
//  Copyright © 2017年 SYZ. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
    }
    
    
    private func addChildVc(storyName: String)
    {
        let vc = UIStoryboard.init(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(vc)
    }

}
