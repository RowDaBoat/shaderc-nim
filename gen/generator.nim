import futhark
import paths
import std/strutils
from std/os import parentDir, `/`
import std/strformat

proc snakeToCamel(str: string, capitalizeFirst: bool): string =
  result = ""
  var capitalizeNext = capitalizeFirst
  
  for c in str:
    if c == '_':
      capitalizeNext = true
    else:
      if capitalizeNext:
        result.add(toUpperAscii(c))
        capitalizeNext = false
      else:
        result.add(c)

const enums = @[
  ("shaderc_source_language", ""),
  ("shaderc_shader_kind", ""),
  ("shaderc_profile", ""),
  ("shaderc_optimization_level", ""),
  ("shaderc_limit", ""),
  ("shaderc_uniform_kind", ""),
  ("shaderc_include_type", ""),
  ("shaderc_target_env", ""),
  ("shaderc_spirv_version", "spirvVersion"),
  ("shaderc_compilation_status", ""),
]

proc rename(name: string, kind: SymbolKind, path: string, overloading: var bool): string =
  let capitalize = kind == Enum or kind == Struct or kind == Union or kind == Typedef or kind == Anon
  var renamed = name

  if (kind == EnumVal):
    for (name, target) in enums:
      renamed = renamed.replace(name & "_", target)

  renamed = renamed.replace("shaderc_", "")
    .snakeToCamel(capitalize)

  echo fmt"{kind:<7}:  {name} -> {renamed}"
  return renamed

importc:
  outputPath srcDir/"shaderc"/"api.nim"
  path shadercDir
  renameCallback rename
  "libshaderc/include/shaderc/shaderc.h"
