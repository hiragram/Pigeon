//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct MediaTypeObject: Codable {
    var schema: SchemaObject?
    var example: CodableValue?
    var examples: [String: ExampleObjectOrReference]?
    var encoding: [String: EncodingObject]?
}
