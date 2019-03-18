

//
//  EauilateralTriangle.swift
//  NISwift
//
//  Created by nixs on 2019/3/15.
//  Copyright © 2019年 nixs. All rights reserved.
//

import Foundation

class EauilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double,name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0*sideLength
        }
        set(valueC) {
            sideLength  = valueC/3.0
        }
    }
    
    override func simpleDescription() -> String {
        return  "An equilateral triangle with sides of length \(sideLength)"
    }
    
}
