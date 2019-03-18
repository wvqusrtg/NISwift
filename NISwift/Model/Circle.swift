
//
//  Circle.swift
//  NISwift
//
//  Created by nixs on 2019/3/15.
//  Copyright © 2019年 nixs. All rights reserved.
//

import Foundation

class Circle: NamedShape {
    
    var r:Double
    
    init(r: Double,name: String) {
        self.r = r
        super.init(name: name)
    }
    
    func areaCircle() -> Double {
        return 3.1415926*r*r
    }
    
    override func simpleDescription() -> String {
        return "A Circle r=\(r),Area=\(areaCircle())"
    }
}
