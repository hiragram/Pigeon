//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/29.
//

import Foundation

struct OAuthFlowObject: Codable {
    var authorizationUrl: String
    var tokenUrl: String
    var refreshUrl: String?
    var scopes: [String: String]
}
