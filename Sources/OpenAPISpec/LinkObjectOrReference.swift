//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

enum LinkObjectOrReference: Codable {
    case link(LinkObject)
    case reference(ReferenceObject)

    enum CodingKeys: String, CodingKey {
        case link
        case reference = "$ref"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let link = try? container.decode(LinkObject.self) {
            self = .link(link)
        } else if let reference = try? container.decode(ReferenceObject.self) {
            self = .reference(reference)
        } else {
            throw DecodingError.typeMismatch(LinkObjectOrReference.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unknown type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .link(let link):
            try container.encode(link)
        case .reference(let reference):
            try container.encode(reference)
        }
    }
}
