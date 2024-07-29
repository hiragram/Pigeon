//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum CallbackObjectOrReference: Codable {
    case callback(CallbackObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case callback
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let callback = try? container.decode(CallbackObject.self) {
            self = .callback(callback)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(CallbackObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .callback(let callback):
            try container.encode(callback)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
