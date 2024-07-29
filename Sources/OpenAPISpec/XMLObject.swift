//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/29.
//

import Foundation

struct XMLObject: Codable {
    var name: String?
    var namespace: String?
    var prefix: String?
    var attribute: Bool?
    var wrapped: Bool?
}
