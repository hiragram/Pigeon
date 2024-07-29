//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/29.
//

import Foundation

indirect enum SchemaObjectOrReference: Codable {
    case schema(SchemaObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case schema
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let schema = try? container.decode(SchemaObject.self) {
            self = .schema(schema)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(SchemaObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .schema(let schema):
            try container.encode(schema)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
