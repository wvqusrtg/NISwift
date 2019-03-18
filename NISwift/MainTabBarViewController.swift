
//
//  MainTabBarViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nav1 = UINavigationController(rootViewController: FirstViewController())
        nav1.tabBarItem = createItemBar(title: "首页", tag: 0)
        
        let nav2 = UINavigationController(rootViewController: SecondViewController())
        nav2.tabBarItem = createItemBar(title: "选择主题", tag: 1)
        
        self.setViewControllers([nav1,nav2], animated: true)
    }
    
    private func createItemBar(title: String,tag: Int)->UITabBarItem{
        let item = UITabBarItem(title: title, image: nil, tag: tag)
        return item
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
