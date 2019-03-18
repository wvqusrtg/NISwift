//
//  NamedShape.swift
//  NISwift
//
//  Created by nixs on 2019/3/15.
//  Copyright © 2019年 nixs. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides."
    }
    
}
