//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/29.
//

import Foundation

struct OAuthFlowsObject: Codable {
    var implicit: OAuthFlowObject?
    var password: OAuthFlowObject?
    var clientCredentials: OAuthFlowObject?
    var authorizationCode: OAuthFlowObject?
}
