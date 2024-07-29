//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct ComponentsObject: Codable {
    var schemas: [String: SchemaObject]?
    var responses: [String: ResponseObjectOrReference]?
    var parameters: [String: ParameterObjectOrReference]?
    var examples: [String: ExampleObjectOrReference]?
    var requestBodies: [String: RequestBodyObjectOrReference]?
    var headers: [String: HeaderObjectOrReference]?
    var securitySchemes: [String: SecuritySchemeObjectOrReference]?
    var links: [String: LinkObjectOrReference]?
    var callbacks: [String: CallbackObjectOrReference]?
    var pathItems: [String: PathItemObjectOrReference]?
}
