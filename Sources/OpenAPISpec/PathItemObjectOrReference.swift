//
//  File.swift
//
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum PathItemObjectOrReference: Codable {
    case pathItem(PathItemObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case pathItem
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let pathItem = try? container.decode(PathItemObject.self) {
            self = .pathItem(pathItem)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(PathItemObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .pathItem(let pathItem):
            try container.encode(pathItem)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
