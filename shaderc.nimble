# Package
version       = "0.0.1"
author        = "RowDaBoat"
description   = "Nim bindings for shaderc"
license       = "ISC"

# Project Setup
srcDir        = "src"

# Dependencies
requires "nim >= 2.0.0"
requires "futhark >= 0.15.0"

# Tasks
task generate, "Generate the bindings and shaderc static library":
  selfExec "c -r -d:futharkRebuild -d:opirRebuild gen/generator.nim"
  when defined(windows):
    exec "cmd /c if exist gen\\generator.exe del /q /f gen\\generator.exe"
  else:
    exec "rm -f gen/generator"

before install:
  let python = when defined(macosx): "python3" else: "python"
  withDir "shaderc": exec "git pull --recurse-submodules origin main"
  withDir "shaderc": exec python & " ./utils/git-sync-deps"
  withDir "shaderc": exec "cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DSHADERC_SKIP_TESTS=ON -DSHADERC_SKIP_EXAMPLES=ON -DSHADERC_SKIP_COPYRIGHT_CHECK=ON"
  withDir "shaderc": exec "cmake --build build --target shaderc_combined --config Release -j 1"

  when defined(windows):
    cpFile "shaderc/build/libshaderc/Release/shaderc_combined.lib", "src/shaderc_combined.lib"
  else:
    cpFile "shaderc/build/libshaderc/libshaderc_combined.a", "src/libshaderc_combined.a"
