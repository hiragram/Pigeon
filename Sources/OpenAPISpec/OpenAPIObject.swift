//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct OpenAPIObject: Codable {
    var openapi: String
    var info: InfoObject
    var jsonSchemaDialect: String?
    var server: [ServerObject]?
    var paths: PathsObject?
    var webhooks: [String: PathItemObjectOrReference]?
    var components: ComponentsObject?
    var security: [SecurityRequirementObject]?
    var tags: [TagObject]?
    var externalDocs: ExternalDocumentationObject?
}
