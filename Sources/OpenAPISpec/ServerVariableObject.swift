//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct ServerVariableObject: Codable {
    var `enum`: [String]?
    var `default`: String
    var description: String?
}
