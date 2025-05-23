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
  exec "cd shaderc && ./utils/git-sync-deps"
  exec "cd shaderc && cmake -DCMAKE_BUILD_TYPE=Release -DSHADERC_SKIP_TESTS=ON -DSHADERC_SKIP_EXAMPLES=ON -DSHADERC_SKIP_COPYRIGHT_CHECK=ON ."
  exec "cd shaderc && cmake --build . --target shaderc_combined"
  when defined(windows):
    exec "cp shaderc/libshaderc/libshaderc_combined.a src/libshaderc_combined_win.a"
  elif defined(macosx):
    exec "cp shaderc/libshaderc/libshaderc_combined.a src/libshaderc_combined_mac.a"
  elif defined(linux):
    exec "cp shaderc/libshaderc/libshaderc_combined.a src/libshaderc_combined_linux.a"
  selfExec "c -r -d:futharkRebuild -d:opirRebuild gen/generator.nim"
  exec "rm gen/generator"
