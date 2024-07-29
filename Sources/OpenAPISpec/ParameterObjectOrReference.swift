//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum ParameterObjectOrReference: Codable {
    case parameter(ParameterObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case parameter
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let parameter = try? container.decode(ParameterObject.self) {
            self = .parameter(parameter)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(ParameterObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .parameter(let parameter):
            try container.encode(parameter)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
