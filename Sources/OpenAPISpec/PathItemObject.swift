//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct PathItemObject: Codable {
    let summary: String?
    let description: String?
    let get: OperationObject?
    let put: OperationObject?
    let post: OperationObject?
    let delete: OperationObject?
    let options: OperationObject?
    let head: OperationObject?
    let patch: OperationObject?
    let trace: OperationObject?
    let servers: [ServerObject]?
    let parameters: [ParameterObjectOrReference]?
}
