//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct LinkObject: Codable {
    var operationRef: String?
    var operationId: String?
    var parameters: [String: String]?
    var requestBody: CodableValue?
    var description: String?
    var server: ServerObject?
}
