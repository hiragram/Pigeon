//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum RequestBodyObjectOrReference: Codable {
    case requestBody(RequestBodyObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case requestBody
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let requestBody = try? container.decode(RequestBodyObject.self) {
            self = .requestBody(requestBody)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(RequestBodyObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .requestBody(let requestBody):
            try container.encode(requestBody)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
