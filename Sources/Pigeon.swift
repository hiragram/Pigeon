// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import Foundation
import ArgumentParser
import Yams

@main
struct Pigeon: AsyncParsableCommand {
    @Argument(transform: URL.init(argument:)) var url: URL

    mutating func run() async throws {
        print("Hello, world!")
        print("url: \(url)")

        // Load openapi yml
        let decoder = YAMLDecoder()
        let ymlData = try await Data(asyncContentsOf: url)
        let yml = try decoder.decode(OpenAPIObject.self, from: ymlData)

        print(yml)

    }
}
