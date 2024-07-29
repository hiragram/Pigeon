//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum ResponseObjectOrReference: Codable {
    case response(ResponseObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case response
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let response = try? container.decode(ResponseObject.self) {
            self = .response(response)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(ResponseObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .response(let response):
            try container.encode(response)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
