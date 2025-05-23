# Package
version       = "0.0.1"
author        = "RowDaBoat"
description   = "Nim bindings for shaderc"
license       = "ISC"

# Project Setup
bin           = @["shaderc"]
srcDir        = "src"
binDir        = "bin"

# Dependencies
requires "nim >= 2.0.0"
requires "futhark >= 0.15.0"

# Tasks
before install:
  exec "cd shaderc && cmake -DSHADERC_SKIP_TESTS=ON -DSHADERC_SKIP_EXAMPLES=ON -DSHADERC_SKIP_COPYRIGHT_CHECK=ON ."
  exec "cd shaderc && cmake --build . --target shaderc_combined"
  selfExec "c -r -d:futharkRebuild -d:opirRebuild gen/generator.nim"
  exec "rm gen/generator"
