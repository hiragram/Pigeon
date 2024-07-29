//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct ResponseObject: Codable {
    var description: String
    var headers: [String: HeaderObjectOrReference]?
    var content: [String: MediaTypeObject]?
    var links: [String: LinkObjectOrReference]?
}
