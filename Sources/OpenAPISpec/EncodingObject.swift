//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct EncodingObject: Codable {
    var contentType: String?
    var headers: [String: HeaderObjectOrReference]?
    var style: String?
    var explode: Bool?
    var allowReserved: Bool?
}
