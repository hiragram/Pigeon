//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct ReferenceObject: Codable {
    var ref: String

    enum CodingKeys: String, CodingKey {
        case ref = "$ref"
    }
}
