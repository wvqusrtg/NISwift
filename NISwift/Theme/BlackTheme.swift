
//
//  BlackTheme.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class BlackTheme: ThemeProtocol {
    var backgroundColor: UIColor{
        get{
            return UIColor.black
        }
    }
    var titleTextColor: UIColor{
        get{
            return UIColor.white
        }
    }
    var detailTextColor: UIColor {
        get{
            return UIColor.lightGray
        }
    }
}
