//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum HeaderObjectOrReference: Codable {
    case header(HeaderObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case header
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let header = try? container.decode(HeaderObject.self) {
            self = .header(header)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(HeaderObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .header(let header):
            try container.encode(header)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
