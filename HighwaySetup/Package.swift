// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZFHighwaySetup",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .executable(
            name: "ZFHighwaySetup",
            targets: ["ZFHighwaySetup"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://www.github.com/doozMen/Highway", from: "2.3.1"),
        .package(url: "https://www.github.com/doozMen/template-sourcery", from: "1.2.1"),
        .package(url: "https://www.github.com/doozMen/ZFile", from: "2.0.0"),
        .package(url: "https://www.github.com/doozMen/SignPost", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ZFHighwaySetup",
            dependencies: [
              "SourceryAutoProtocols",
              "ZFile",
              "Terminal",
              "SourceryWorker",
              "SignPost",
              "Arguments",
              "Errors"
            ],
            path: "Sources/ZFHighwaySetup"
          ),
        .testTarget(
            name: "ZFHighwaySetupTests",
            dependencies: ["ZFHighwaySetup"],
            path: "Tests/ZFHighwaySetup"
          ),
    ]
)
