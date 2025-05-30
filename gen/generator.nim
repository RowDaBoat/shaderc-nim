import futhark
import paths
import std/strutils
from std/os import parentDir, `/`
import std/strformat
import tables

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

const specific = @[
  ("shaderc_compiler_initialize", "initialize_compiler"),
  ("shaderc_compile_options_initialize", "initialize_compile_options"),
  ("shaderc_spirv_version", "spirv_version"),
]

const enums = @[
  "shaderc_target_env",
  "shaderc_env_version",
  "shaderc_spirv_version",
  "shaderc_source_language",
  "shaderc_shader_kind",
  "shaderc_profile",
  "shaderc_optimization_level",
  "shaderc_limit",
  "shaderc_uniform_kind",
  "shaderc_include_type",
  "shaderc_target_env",
  "shaderc_compilation_status",
  "shaderc"
]

const procs = @[
  "shaderc_compile_options",
  "shaderc_compiler",
  "shaderc_result",
  "shaderc"
]

proc rename(name: string, kind: SymbolKind, path: string, overloading: var bool): string =
  let capitalize = kind == Enum or kind == Struct or kind == Union or kind == Typedef or kind == Anon
  var renamed = name

  for (name, target) in specific:
    if (renamed.startsWith(name)):
      renamed = renamed.replace(name, target)

  if (kind == EnumVal):
    for name in enums:
      renamed = renamed.replace(name & "_", "")
  elif (kind == Proc):
    for name in procs:
      renamed = renamed.replace(name & "_", "")
  else:
    renamed = renamed.replace("shaderc_", "")

  renamed = renamed.snakeToCamel(capitalize)
  echo fmt"{kind:<7}:  {name} -> {renamed}"
  return renamed

importc:
  outputPath srcDir/"api.nim"
  path shadercDir
  renameCallback rename
  "libshaderc/include/shaderc/env.h"
  "libshaderc/include/shaderc/shaderc.h"
  "libshaderc/include/shaderc/status.h"
