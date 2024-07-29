//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct OperationObject: Codable {
    var tags: [String]?
    var summary: String?
    var description: String?
    var operationId: String?
    var parameters: [ParameterObjectOrReference]?
    var requestBody: RequestBodyObjectOrReference?
    var responses: [String: ResponseObjectOrReference]?
    var callbacks: [String: CallbackObjectOrReference]?
    var deprecated: Bool?
    var security: [[String: [String]]]?
    var servers: [ServerObject]?
}
