//
//  DetailLabel.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class DetailLabel: SuperLabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.font = UIFont.boldSystemFont(ofSize: 12)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func themeTextColor(theme: ThemeProtocol) -> UIColor {
        return theme.detailTextColor
    }
}
