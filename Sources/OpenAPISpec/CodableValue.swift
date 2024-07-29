//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct CodableValue: Codable {
    var anyValue: Any

    init(_ value: Any) {
        self.anyValue = value
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Bool.self) {
            self.anyValue = value
        } else if let value = try? container.decode(Int.self) {
            self.anyValue = value
        } else if let value = try? container.decode(Double.self) {
            self.anyValue = value
        } else if let value = try? container.decode(String.self) {
            self.anyValue = value
        } else {
            throw DecodingError.typeMismatch(CodableValue.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unsupported type"))
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        if let value = anyValue as? Bool {
            try container.encode(value)
        } else if let value = anyValue as? Int {
            try container.encode(value)
        } else if let value = anyValue as? Double {
            try container.encode(value)
        } else if let value = anyValue as? String {
            try container.encode(value)
        } else {
            throw EncodingError.invalidValue(anyValue, EncodingError.Context(codingPath: encoder.codingPath, debugDescription: "Unsupported type"))
        }
    }
}
