//
//  HomeViewController.swift
//  DouYuTV
//
//  Created by shanyazhou on 2017/4/25.
//  Copyright © 2017年 SYZ. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置UI界面
        setupUI()
    }

}

// MARK: - 设置UI界面
extension HomeViewController {
    
    fileprivate func setupUI() {
        //1.设置导航栏
        setupNavigationBar()
    }
    
    //设置导航栏
    private func setupNavigationBar() {
        //1.设置左侧的item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        //2.设置右侧的item
        let size = CGSize(width: 40, height: 40)
        
        let historyItem = UIBarButtonItem(imageName: "Image_my_history", highImageName: "Image_my_history_click", size: size)
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_click", size: size)
        
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        
        
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
    }
}
