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
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Quick/Quick", from: "1.3.0"),
        .package(url: "https://github.com/Quick/Nimble", from: "7.0.0"),
        .package(url: "https://www.github.com/doozMen/SignPost", from: "1.0.0"),
        .package(url: "https://www.github.com/dooZdev/template-sourcery", "1.3.7" ..< "2.0.0"),
    ],
    targets: [
        // MARK: - Target

        .target(
            name: "ZFile",
            dependencies: ["SourceryAutoProtocols"]
        ),

        // MARK: - Target - Mock

        .target(
            name: "ZFileMock",
            dependencies: ["ZFile", "SignPost"],
            path: "Sources/Generated/ZFile"
        ),

        // MARK: - Test

        .testTarget(
            name: "ZFileTests",
            dependencies: ["ZFile", "ZFileMock", "Quick", "Nimble"]
        ),
    ]
)
