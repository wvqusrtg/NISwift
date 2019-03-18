//
//  RedTheme.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class RedTheme: ThemeProtocol {
    var backgroundColor: UIColor {
        get{
            return UIColor.colorWithHex(0xD62688)
        }
    }
    var titleTextColor: UIColor{
        get{
            return UIColor.white
        }
    }
    var detailTextColor: UIColor{
        get{
            return UIColor.yellow
        }
    }
}
