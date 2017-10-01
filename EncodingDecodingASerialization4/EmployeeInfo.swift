//
//  Employee.swift
//  EncodingDecodingASerialization4
//
//  Created by SK on 9/28/17.
//  Copyright © 2017 SK. All rights reserved.
//

import Foundation

struct Employee: Codable
{
    var name: String
    var id: Int
    var favoriteToy: Toy
}

struct Toy: Codable
{
    var name: String
}

struct StaticInternalVars
{
    static var name: String = ""
    static var id: Int = 0
    static var toyName: String = ""
    static var jsonData: Data = Data.init()
    static var jsonString: String = ""
}



