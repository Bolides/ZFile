# ZFile 
> Test - Integrate - Build status: [@dooZdev ![Build Status](https://app.bitrise.io/app/75d3763f28ab948f/status.svg?token=4g01pJlpXjphb32XTKik2g&branch=master)](https://app.bitrise.io/app/75d3763f28ab948f) [@Bolides ![Build Status](https://app.bitrise.io/app/4faaf8e78ed06df4/status.svg?token=dxnoGo0MM3jHeiS8SGBokQ&branch=master)](https://app.bitrise.io/app/4faaf8e78ed06df4)

An effort to have a throwable alternative to using files

It builds:

1. ZFile for macOS and iOS.
2. FoundationGenericHelpers
3. Mocks for both

# Build setup

ZFile is setup using [Highway](https://www.github.com/dooZdev/Highway)

For the first use do

``` bash
#!/bin/sh

cd /Users/stijnwillems/Documents/dooZ/Open/template-sourcery/ZFHighwaySetup
# Build setup executable
if [ ! -f ./.build/x86_64-apple-macosx10.10/release/ZFHighwaySetup ]; then
echo "TSHighwaySetup, not found - building for source"
swift build --product TSHighwaySetup -c release --static-swift-stdlib
fi

# Execute the script
./.build/x86_64-apple-macosx10.10/release/ZFHighwaySetup
# Allow push on success
```
After that for every push you do code will be generated and tast will run before the push can complete successfully.

# Add ZFile to your project

## Swift Package

Preferred is using [swift package](https://github.com/apple/swift-package-manager/blob/master/Documentation/)
add `.package(url: "https://github.com/doozMen/ZFile", from: "2.0.0"),`

then to `swift build` in your project

---

## Carthage

Building is done with Xcode and not with Carthage. You can chose to checkout with submodules or just checkout without building.

# Integrate ZFile

Add `ZFile.xcodeproj` as sub project to your project
