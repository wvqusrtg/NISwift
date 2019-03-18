//
//  WhiteTheme.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

class WhiteTheme: ThemeProtocol {
    var backgroundColor: UIColor{
        get{
            return UIColor.white
        }
    }
    var titleTextColor: UIColor{
        get{
            return UIColor.black
        }
    }
    var detailTextColor: UIColor{
        get{
            return UIColor.red
        }
    }
}
