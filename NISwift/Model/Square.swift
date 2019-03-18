
//
//  Square.swift
//  NISwift
//
//  Created by nixs on 2019/3/15.
//  Copyright © 2019年 nixs. All rights reserved.
//

import Foundation

class Square: NamedShape {
    var sideLength:Double
    
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() -> Double {
        return sideLength*sideLength
    }
    
    override func simpleDescription() -> String {
        return "A Shape with Sides of length \(sideLength)"
    }
}
