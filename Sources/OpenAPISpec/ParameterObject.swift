//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct ParameterObject: Codable {
    var name: String
    var `in`: String
    var description: String?
    var required: Bool
    var deprecated: Bool?
    var allowEmptyValue: Bool?
    var style: String?
    var explode: Bool?
    var allowReserved: Bool?
    var schema: SchemaObject?
    var example: CodableValue?
    var examples: [String: ExampleObjectOrReference]?
    var content: [String: MediaTypeObject]?
}
