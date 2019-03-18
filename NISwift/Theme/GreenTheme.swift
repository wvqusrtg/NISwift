//
//  GreenTheme.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class GreenTheme: ThemeProtocol {
    var backgroundColor: UIColor {
        get{
            return UIColor.colorWithHex(0xB3FFAA)
        }
    }
    var titleTextColor: UIColor {
        get{
            return UIColor.brown
        }
    }
    var detailTextColor: UIColor {
        get{
            return UIColor.black
        }
    }
}
