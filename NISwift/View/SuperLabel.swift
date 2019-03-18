//
//  SuperLabel.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class SuperLabel: UILabel, ThemeManagerProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(jcoder:) has not been implemented")
    }
    
    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)), name: ThemeNotifacationName, object: nil)
        ThemeManager.themeUpdate()
    }
    
    @objc func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.textColor = self.themeTextColor(theme: theme)
    }
    
    func themeTextColor(theme:ThemeProtocol) -> UIColor {
        return theme.titleTextColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("释放")
    }
}
