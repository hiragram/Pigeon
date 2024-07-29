//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct ServerObject: Codable {
    var url: URL
    var description: String?
    var variables: [String: ServerVariableObject]
}
