// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZFHighwaySetup",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .executable(
            name: "ZFHighwaySetup",
            targets: ["ZFHighwaySetup"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://www.github.com/doozDev/Highway", "2.4.14" ..< "3.0.0"),
        .package(url: "https://www.github.com/Quick/Quick", "1.3.4" ..< "2.1.0"),
        .package(url: "https://www.github.com/Quick/Nimble", "7.3.4" ..< "8.1.0"),
        .package(url: "https://www.github.com/doozMen/template-sourcery", "1.3.3"..<"2.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ZFHighwaySetup",
            dependencies: [
                "Highway"
            ],
            path: "Sources/ZFHighwaySetup"
        ),
        .testTarget(
            name: "ZFHighwaySetupTests",
            dependencies: ["ZFHighwaySetup", "Quick", "Nimble"],
            path: "Tests/ZFHighwaySetup"
        ),
    ]
)