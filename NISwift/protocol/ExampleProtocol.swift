

//
//  ExampleProtocol.swift
//  NISwift
//
//  Created by nixs on 2019/3/18.
//  Copyright © 2019年 nixs. All rights reserved.
//

import Foundation

protocol ExampleProtocol {
    var simpleDescription: String{get}
    mutating func adjust()
}
