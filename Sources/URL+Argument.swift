//
//  File.swift
//  
//
//  Created by Yuya Hirayama on 2024/07/28.
//

import Foundation
import ArgumentParser

extension URL {
    init(argument: String) throws {
        let url: URL
        if argument.starts(with: #/\//#) {
            url = URL(filePath: argument)
        } else {
            let currentDirectory = URL(
                filePath: FileManager.default.currentDirectoryPath,
                directoryHint: .isDirectory
            )

            url = currentDirectory
                .appending(path: argument)
                .standardized
        }

        self = url
    }

    enum ArgumentError: Error {
        case invalidURLText(raw: String)
    }
}
