//
//  UIBarButtonItem-Extension.swift
//  DouYuTV
//
//  Created by shanyazhou on 2017/4/25.
//  Copyright © 2017年 SYZ. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    /**
    class func creatItem(imageName: String, highImageName: String, size: CGSize) -> UIBarButtonItem {
        
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: UIControlState.normal)
        btn.setImage(UIImage(named: highImageName), for: UIControlState.highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
 */
   
    //在extension里面，扩充构造函数，只能用便利构造函数
    //1以convenience开头 2在构造函数中，必须明确调用一个设计的构造函数（并且以self调用）
    convenience init(imageName: String, highImageName: String = "", size: CGSize = CGSize.zero) {
        
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: UIControlState.normal)
        if highImageName != ""
        {
            btn.setImage(UIImage(named: highImageName), for: UIControlState.highlighted)
        }
        
        if size == CGSize.zero {
            btn.sizeToFit()
        }else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        self.init(customView: btn)
    }
}
