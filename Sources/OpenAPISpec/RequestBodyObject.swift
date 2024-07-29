//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct RequestBodyObject: Codable {
    var description: String?
    var content: [String: MediaTypeObject]
    var required: Bool?
}
