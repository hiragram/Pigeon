//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

struct InfoObject: Codable {
    var title: String
    var summary: String?
    var description: String?
    var termsOfService: String?
    var contact: ContactObject?
    var license: LicenseObject?
    var version: String
}
