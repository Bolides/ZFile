# Zfile

An effort to have a throwable alternative to using files

It builds:

1. ZFile for macos and ios.
2. FoundationGenericHelpers
3. Mocks for both

# Build ZFile

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
# github "doozMen/zfile" "v1.0"
carthage update --use-submodules --nobuild
cd /Sources/<#project#>
open <#project#>.xcodeproj
# add ZFile.xcodeprojet as a subproject like in AutomateZFile
# embed ZFile in your project, it will be added to embed, link and target depency so you always have the correct version for release and debug products.
```
