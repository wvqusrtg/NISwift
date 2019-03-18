//
//  SimpleClass.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import Foundation

class SimpleClass: ExampleProtocol {
    func adjust() {
        simpleDescription += " Now 100% adjusted"
    }
    
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105    
}
