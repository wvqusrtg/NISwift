//
//  SuperViewController.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class SuperViewController: UIViewController,ThemeManagerProtocol {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeTheme()
    }
    
    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.handelNotification(notification:)), name: ThemeNotifacationName, object: nil)
        ThemeManager.themeUpdate()
    }
    
    @objc func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.view.backgroundColor = theme.backgroundColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("释放")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
}
