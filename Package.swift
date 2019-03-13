// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZFile",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ZFile",
            targets: ["ZFile"]
        ),
        .library(
            name: "ZFileMock",
            targets: ["ZFileMock"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Quick/Quick", from: "1.3.0"),
        .package(url: "https://github.com/Quick/Nimble", from: "7.0.0"),
        .package(url: "https://www.github.com/doozMen/SignPost", from: "1.0.0"),
        .package(url: "https://www.github.com/dooZDev/template-sourcery", "1.3.3" ..< "2.0.0"),
        .package(url: "https://www.github.com/doozMen/Sourcery", "0.16.3" ..< "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ZFile",
            dependencies: ["SourceryAutoProtocols"]
        ),
        .target(
            name: "ZFileMock",
            dependencies: ["ZFile", "SignPost"],
            path: "Sources/Generated/ZFile"
        ),
        .testTarget(
            name: "ZFileTests",
            dependencies: ["ZFile", "ZFileMock", "Quick", "Nimble"]
        ),
    ]
)
