// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZFHighwaySetup",
    products: [
        // MARK: - Executable

        .executable(
            name: "ZFHighwaySetup",
            targets: ["ZFHighwaySetup"]
        ),
    ],
    dependencies: [
        // MARK: - External Packages

        .package(url: "https://www.github.com/Bolides/Highway", "2.6.0" ..< "3.0.0"),
        .package(url: "https://www.github.com/Quick/Quick", "1.3.4" ..< "2.1.0"),
        .package(url: "https://www.github.com/Quick/Nimble", "7.3.4" ..< "8.1.0"),
        .package(url: "https://www.github.com/dooZdev/template-sourcery", "1.3.7" ..< "2.0.0"),
        .package(url: "https://www.github.com/doozMen/Sourcery", "0.17.0" ..< "1.0.0"),
    ],
    targets: [
        // MARK: - Target

        .target(
            name: "ZFHighwaySetup",
            dependencies: [
                "Highway",
                "SourceryAutoProtocols",
            ],
            path: "Sources/ZFHighwaySetup"
        ),

        // MARK: - Test

        .testTarget(
            name: "ZFHighwaySetupTests",
            dependencies: ["ZFHighwaySetup", "Quick", "Nimble"],
            path: "Tests/ZFHighwaySetup"
        ),
    ]
)
