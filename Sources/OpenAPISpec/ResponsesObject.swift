//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/29.
//

import Foundation

struct ResponsesObject: Codable {
    var defaultResponse: ResponseObjectOrReference?
    var responses: [String: ResponseObjectOrReference]
}
