// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZFile",
    products: [
        // MARK: - Library

        .library(
            name: "ZFile",
            targets: ["ZFile"]
        ),

        // MARK: - Library - Mock

        .library(
            name: "ZFileMock",
            targets: ["ZFileMock"]
        ),
    ],
    dependencies: [
        
        // MARK: - Testing
        .package(url: "https://github.com/Quick/Quick", "1.3.0" ..< "2.1.0"),
        .package(url: "https://github.com/Quick/Nimble", "7.0.0" ..< "8.1.0"),
    ],
    targets: [
        // MARK: - Target

        .target(
            name: "ZFile",
            dependencies: []
        ),

        // MARK: - Target - Mock

        .target(
            name: "ZFileMock",
            dependencies: ["ZFile"],
            path: "Sources/Generated/ZFile"
        ),

        // MARK: - Test

        .testTarget(
            name: "ZFileTests",
            dependencies: ["ZFile", "ZFileMock", "Quick", "Nimble"]
        ),
    ]
)
