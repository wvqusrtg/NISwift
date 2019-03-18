//
//  yellowTheme.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class YellowTheme: ThemeProtocol {
    var backgroundColor: UIColor{
        get{
            return UIColor.colorWithHex(0xF1FF83)
        }
    }
    var titleTextColor: UIColor{
        get{
            return UIColor.red
        }
    }
    var detailTextColor: UIColor{
        get{
            return UIColor.lightGray
        }
    }
}
