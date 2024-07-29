//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct SchemaObject: Codable {
    var title: String?
    var multipleOf: Double?
    var maximum: Double?
    var exclusiveMaximum: Bool?
    var minimum: Double?
    var exclusiveMinimum: Bool?
    var maxLength: Int?
    var minLength: Int?
    var pattern: String?
    var maxItems: Int?
    var minItems: Int?
    var uniqueItems: Bool?
    var maxProperties: Int?
    var minProperties: Int?
    var required: [String]?
    var enumValues: [CodableValue]?
    var type: String?
    var allOf: [SchemaObjectOrReference]?
    var oneOf: [SchemaObjectOrReference]?
    var anyOf: [SchemaObjectOrReference]?
    var not: SchemaObjectOrReference?
    var items: SchemaObjectOrReference?
    var properties: [String: SchemaObjectOrReference]?
    var additionalProperties: SchemaObjectOrReference?
    var description: String?
    var format: String?
    var defaultValue: CodableValue?
    var nullable: Bool?
    var readOnly: Bool?
    var writeOnly: Bool?
    var xml: XMLObject?
    var externalDocs: ExternalDocumentationObject?
    var example: CodableValue?
    var deprecated: Bool?
}
