# ZFile

An effort to have a throwable alternative to using files

It builds:

1. ZFile for macOS and iOS.
2. FoundationGenericHelpers
3. Mocks for both

# Build ZFile

Building is done with Xcode and not with Carthage. You can chose to checkout with submodules or just checkout without building.

## If you w
```bash
cd Sources
carthage update --use-submodules --nobuild
```

# Integrate ZFile

2 projects build the code. The project you should is in your project is ZFile.xcodeproj. AutomateZFile.xcproj builds all dependencies, runs tests and generates mock code.

So how to use it.


``` bash

cd <#Sources#>
atom Cartfile

# Add lines to Cartfile
# github "doozMen/ZFile" "v1.0"

carthage update --use-submodules --nobuild
cd /Sources/<#project#>
open <#project#>.xcodeproj

# add ZFile.xcodeprojet as a subproject like in AutomateZFile
# embed ZFile in your project, it will be added to embed, link and target dependencies so you always have the correct version for release and debug products.

```
