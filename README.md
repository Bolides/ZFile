# ZFile [![Build Status](https://app.bitrise.io/app/75d3763f28ab948f/status.svg?token=4g01pJlpXjphb32XTKik2g&branch=master)](https://app.bitrise.io/app/75d3763f28ab948f)

An effort to have a throwable alternative to using files

It builds:

1. ZFile for macOS and iOS.
2. FoundationGenericHelpers
3. Mocks for both

# Build ZFile

## Swift Package

Preferred is using [swift package](https://github.com/apple/swift-package-manager/blob/master/Documentation/)
add `.package(url: "https://github.com/doozMen/ZFile", from: "2.0.0"),`

then to `swift build` in your project

---

## Carthage

Building is done with Xcode and not with Carthage. You can chose to checkout with submodules or just checkout without building.

# Integrate ZFile

Add `ZFile.xcodeproj` as sub project to your project
