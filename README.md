# `shaderc` bindings for Nim

## Requirements
### Linux
- Python 3, and `python` must be version 3 or above.
- c++ libs and headers, in Debian: `apt install libstdc++ libc++-dev libc++abi-dev libstdc++12-dev`

### MacOS
- XCode

### Windows (MSVC toolchain)
- [Python 3](https://www.python.org/)
- [Windows SDK and MSVC](https://learn.microsoft.com/en-us/windows/apps/windows-sdk/)
- [Build Tools for Visual Studio](https://learn.microsoft.com/en-us/visualstudio/msbuild/msbuild?view=visualstudio&viewFallbackFrom=vs-2019) (MSVC + MSBuild)
- [CMake](https://cmake.org/)

## Installation
Just add `requires "https://github.com/RowDaBoat/shadercnim.git"` to your `.nimble` file.
