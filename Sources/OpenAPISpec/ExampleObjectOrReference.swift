//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum ExampleObjectOrReference: Codable {
    case example(ExampleObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case example
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let example = try? container.decode(ExampleObject.self) {
            self = .example(example)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(ExampleObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .example(let example):
            try container.encode(example)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
