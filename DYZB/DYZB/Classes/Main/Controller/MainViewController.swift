//
//  MainViewController.swift
//  DYZB
//
//  Created by Yuels on 2020/6/10.
//  Copyright © 2020 Portman Electronics Co.Ltd. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
	
//		if #available(iOS 9.0, *){
//			// iOS 9 及其以上系统运行
//		}else {
//			// iOS 9 以下系统系统运行
//			setupChildVc()
//		}
		guard #available(iOS 9.0, *) else {
			setupChildVc()
			return
		}
		
    }
	
	private func setupChildVc() {
		addChildVc(storyboardName: "Home")
		addChildVc(storyboardName: "Live")
		addChildVc(storyboardName: "Follow")
		addChildVc(storyboardName: "Profile")
	}
	
	private func addChildVc(storyboardName: String) {
		let childVc = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController()
		addChild(childVc!)
	}

}
