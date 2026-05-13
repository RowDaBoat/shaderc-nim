import std/[os, osproc, strutils]
import rituals


let python = when defined(macosx): "python3" else: "python"
when defined(windows):
  let libPath = "shaderc/build/libshaderc/Release/shaderc_combined.lib"
  let destPath = "src/shaderc_combined.lib"
else:
  let libPath = "shaderc/build/libshaderc/libshaderc_combined.a"
  let destPath = "src/libshaderc_combined.a"


# TODO move this to rituals
proc coreCount(): string =
  when defined(windows):
    execProcess("cmd /c echo %NUMBER_OF_PROCESSORS%").strip()
  elif defined(macosx):
    execProcess("sysctl -n hw.logicalcpu").strip()
  else:
    execProcess("nproc").strip()


ritual "generate":
  # Note: this ritual requires Futhark's `opir` installed.
  nim.compile("gen/generator.nim", flags = "-r -d:futharkRebuild -d:opirRebuild", name = "generate bindings")
  remove("gen/generator", name = "clean generator")


ritual "build":
  cmd("cd shaderc && " & python & " ./utils/git-sync-deps", name = "sync deps")
  cmd("cd shaderc && cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DSHADERC_SKIP_TESTS=ON -DSHADERC_SKIP_EXAMPLES=ON -DSHADERC_SKIP_COPYRIGHT_CHECK=ON", name = "cmake configure")
  cmd("cd shaderc && cmake --build build --target shaderc_combined --config Release -j " & coreCount(), name = "cmake build")
  copy(libPath, destPath, name = "install lib")

ritual "clean":
  remove(destPath)
  remove("shaderc/build")
