//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct SecuritySchemeObject: Codable {
    var type: String
    var description: String?
    var name: String?
    var `in`: String?
    var scheme: String?
    var bearerFormat: String?
    var flows: OAuthFlowsObject?
    var openIdConnectUrl: String?
}
