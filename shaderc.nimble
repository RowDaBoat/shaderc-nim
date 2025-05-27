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
  exec "rm gen/generator"

before install:
  withDir "shaderc": exec "git pull --recurse-submodules origin main"
  withDir "shaderc": exec "./utils/git-sync-deps"
  withDir "shaderc": exec "cmake -DCMAKE_BUILD_TYPE=Release -DSHADERC_SKIP_TESTS=ON -DSHADERC_SKIP_EXAMPLES=ON -DSHADERC_SKIP_COPYRIGHT_CHECK=ON ."
  withDir "shaderc": exec "cmake --build . --target shaderc_combined"
  cpFile "shaderc/libshaderc/libshaderc_combined.a", "src/libshaderc_combined.a"
