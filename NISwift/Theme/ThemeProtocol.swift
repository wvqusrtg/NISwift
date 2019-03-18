//
//  ThemeProtocol.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import UIKit

/// 主题协议,所有的主题都要遵守该协议
protocol ThemeProtocol {
    var backgroundColor: UIColor {get}
    var titleTextColor: UIColor {get}
    var detailTextColor: UIColor {get}
}

/// 主题类型枚举,其中包含了一个简单工厂方法，用来创建Theme主题类的对象
enum ThemeType {
    case whiteTheme
    case blackTheme
    case greenTheme
    case redTheme
    case yellowTheme
    case blueTheme
    
    /// 主题类型所对应的主题对象
    var theme: ThemeProtocol {
        get {
            switch self {
            case .whiteTheme:
                return WhiteTheme()
            case .blackTheme:
                return BlackTheme()
            case .greenTheme:
                return GreenTheme()
            case .redTheme:
                return RedTheme()
            case .yellowTheme:
                return YellowTheme()
            case .blueTheme:
                return BlueTheme()
                
            }
        }
    }
    
}
