//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation

extension Data {
    init(asyncContentsOf url: URL) async throws {
        self = try await withCheckedThrowingContinuation({ continuation in
            do {
                let data = try Data(contentsOf: url)
                continuation.resume(returning: data)
            } catch let error {
                continuation.resume(throwing: error)
            }
        })
    }
}
