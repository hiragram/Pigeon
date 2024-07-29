//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum SecuritySchemeObjectOrReference: Codable {
    case securityScheme(SecuritySchemeObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case securityScheme
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let securityScheme = try? container.decode(SecuritySchemeObject.self) {
            self = .securityScheme(securityScheme)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(SecuritySchemeObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .securityScheme(let securityScheme):
            try container.encode(securityScheme)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
