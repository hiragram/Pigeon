//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct TagObject: Codable {
    var name: String
    var description: String?
    var externalDocs: ExternalDocumentationObject?
}
