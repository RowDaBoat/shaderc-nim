
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from std / macros import hint, warning, newLit, getSize

from std / os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  EnumTargetEnv_536871498* {.size: sizeof(cuint).} = enum
    vulkan = 0, opengl = 1, openglCompat = 2, webgpu = 3
when not declared(default):
  const
    default* = EnumTargetEnv_536871498.vulkan
else:
  static :
    hint("Declaration of " & "default" & " already exists, not redeclaring")
type
  EnumEnvVersion_536871503* {.size: sizeof(cuint).} = enum
    envVersionOpengl45 = 450, envVersionWebgpu = 451,
    envVersionVulkan10 = 4194304, envVersionVulkan11 = 4198400,
    envVersionVulkan12 = 4202496, envVersionVulkan13 = 4206592,
    envVersionVulkan14 = 4210688
type
  EnumSpirvVersion_536871507* {.size: sizeof(cuint).} = enum
    spirvVersion10 = 65536, spirvVersion11 = 65792, spirvVersion12 = 66048,
    spirvVersion13 = 66304, spirvVersion14 = 66560, spirvVersion15 = 66816,
    spirvVersion16 = 67072
type
  EnumSourceLanguage_536871511* {.size: sizeof(cuint).} = enum
    glsl = 0, hlsl = 1
type
  EnumShaderKind_536871515* {.size: sizeof(cuint).} = enum
    vertexShader = 0, fragmentShader = 1, computeShader = 2, geometryShader = 3,
    tessControlShader = 4, tessEvaluationShader = 5, glslInferFromSource = 6,
    glslDefaultVertexShader = 7, glslDefaultFragmentShader = 8,
    glslDefaultComputeShader = 9, glslDefaultGeometryShader = 10,
    glslDefaultTessControlShader = 11, glslDefaultTessEvaluationShader = 12,
    spirvAssembly = 13, raygenShader = 14, anyhitShader = 15,
    closesthitShader = 16, missShader = 17, intersectionShader = 18,
    callableShader = 19, glslDefaultRaygenShader = 20,
    glslDefaultAnyhitShader = 21, glslDefaultClosesthitShader = 22,
    glslDefaultMissShader = 23, glslDefaultIntersectionShader = 24,
    glslDefaultCallableShader = 25, taskShader = 26, meshShader = 27,
    glslDefaultTaskShader = 28, glslDefaultMeshShader = 29
when not declared(glslVertexShader):
  const
    glslVertexShader* = EnumShaderKind_536871515.vertexShader
else:
  static :
    hint("Declaration of " & "glslVertexShader" &
        " already exists, not redeclaring")
when not declared(glslFragmentShader):
  const
    glslFragmentShader* = EnumShaderKind_536871515.fragmentShader
else:
  static :
    hint("Declaration of " & "glslFragmentShader" &
        " already exists, not redeclaring")
when not declared(glslComputeShader):
  const
    glslComputeShader* = EnumShaderKind_536871515.computeShader
else:
  static :
    hint("Declaration of " & "glslComputeShader" &
        " already exists, not redeclaring")
when not declared(glslGeometryShader):
  const
    glslGeometryShader* = EnumShaderKind_536871515.geometryShader
else:
  static :
    hint("Declaration of " & "glslGeometryShader" &
        " already exists, not redeclaring")
when not declared(glslTessControlShader):
  const
    glslTessControlShader* = EnumShaderKind_536871515.tessControlShader
else:
  static :
    hint("Declaration of " & "glslTessControlShader" &
        " already exists, not redeclaring")
when not declared(glslTessEvaluationShader):
  const
    glslTessEvaluationShader* = EnumShaderKind_536871515.tessEvaluationShader
else:
  static :
    hint("Declaration of " & "glslTessEvaluationShader" &
        " already exists, not redeclaring")
when not declared(glslRaygenShader):
  const
    glslRaygenShader* = EnumShaderKind_536871515.raygenShader
else:
  static :
    hint("Declaration of " & "glslRaygenShader" &
        " already exists, not redeclaring")
when not declared(glslAnyhitShader):
  const
    glslAnyhitShader* = EnumShaderKind_536871515.anyhitShader
else:
  static :
    hint("Declaration of " & "glslAnyhitShader" &
        " already exists, not redeclaring")
when not declared(glslClosesthitShader):
  const
    glslClosesthitShader* = EnumShaderKind_536871515.closesthitShader
else:
  static :
    hint("Declaration of " & "glslClosesthitShader" &
        " already exists, not redeclaring")
when not declared(glslMissShader):
  const
    glslMissShader* = EnumShaderKind_536871515.missShader
else:
  static :
    hint("Declaration of " & "glslMissShader" &
        " already exists, not redeclaring")
when not declared(glslIntersectionShader):
  const
    glslIntersectionShader* = EnumShaderKind_536871515.intersectionShader
else:
  static :
    hint("Declaration of " & "glslIntersectionShader" &
        " already exists, not redeclaring")
when not declared(glslCallableShader):
  const
    glslCallableShader* = EnumShaderKind_536871515.callableShader
else:
  static :
    hint("Declaration of " & "glslCallableShader" &
        " already exists, not redeclaring")
when not declared(glslTaskShader):
  const
    glslTaskShader* = EnumShaderKind_536871515.taskShader
else:
  static :
    hint("Declaration of " & "glslTaskShader" &
        " already exists, not redeclaring")
when not declared(glslMeshShader):
  const
    glslMeshShader* = EnumShaderKind_536871515.meshShader
else:
  static :
    hint("Declaration of " & "glslMeshShader" &
        " already exists, not redeclaring")
type
  EnumProfile_536871519* {.size: sizeof(cuint).} = enum
    none = 0, core = 1, compatibility = 2, es = 3
type
  EnumOptimizationLevel_536871523* {.size: sizeof(cuint).} = enum
    zero = 0, size = 1, performance = 2
type
  EnumLimit_536871527* {.size: sizeof(cuint).} = enum
    maxLights = 0, maxClipPlanes = 1, maxTextureUnits = 2, maxTextureCoords = 3,
    maxVertexAttribs = 4, maxVertexUniformComponents = 5, maxVaryingFloats = 6,
    maxVertexTextureImageUnits = 7, maxCombinedTextureImageUnits = 8,
    maxTextureImageUnits = 9, maxFragmentUniformComponents = 10,
    maxDrawBuffers = 11, maxVertexUniformVectors = 12, maxVaryingVectors = 13,
    maxFragmentUniformVectors = 14, maxVertexOutputVectors = 15,
    maxFragmentInputVectors = 16, minProgramTexelOffset = 17,
    maxProgramTexelOffset = 18, maxClipDistances = 19,
    maxComputeWorkGroupCountX = 20, maxComputeWorkGroupCountY = 21,
    maxComputeWorkGroupCountZ = 22, maxComputeWorkGroupSizeX = 23,
    maxComputeWorkGroupSizeY = 24, maxComputeWorkGroupSizeZ = 25,
    maxComputeUniformComponents = 26, maxComputeTextureImageUnits = 27,
    maxComputeImageUniforms = 28, maxComputeAtomicCounters = 29,
    maxComputeAtomicCounterBuffers = 30, maxVaryingComponents = 31,
    maxVertexOutputComponents = 32, maxGeometryInputComponents = 33,
    maxGeometryOutputComponents = 34, maxFragmentInputComponents = 35,
    maxImageUnits = 36, maxCombinedImageUnitsAndFragmentOutputs = 37,
    maxCombinedShaderOutputResources = 38, maxImageSamples = 39,
    maxVertexImageUniforms = 40, maxTessControlImageUniforms = 41,
    maxTessEvaluationImageUniforms = 42, maxGeometryImageUniforms = 43,
    maxFragmentImageUniforms = 44, maxCombinedImageUniforms = 45,
    maxGeometryTextureImageUnits = 46, maxGeometryOutputVertices = 47,
    maxGeometryTotalOutputComponents = 48, maxGeometryUniformComponents = 49,
    maxGeometryVaryingComponents = 50, maxTessControlInputComponents = 51,
    maxTessControlOutputComponents = 52, maxTessControlTextureImageUnits = 53,
    maxTessControlUniformComponents = 54,
    maxTessControlTotalOutputComponents = 55,
    maxTessEvaluationInputComponents = 56,
    maxTessEvaluationOutputComponents = 57,
    maxTessEvaluationTextureImageUnits = 58,
    maxTessEvaluationUniformComponents = 59, maxTessPatchComponents = 60,
    maxPatchVertices = 61, maxTessGenLevel = 62, maxViewports = 63,
    maxVertexAtomicCounters = 64, maxTessControlAtomicCounters = 65,
    maxTessEvaluationAtomicCounters = 66, maxGeometryAtomicCounters = 67,
    maxFragmentAtomicCounters = 68, maxCombinedAtomicCounters = 69,
    maxAtomicCounterBindings = 70, maxVertexAtomicCounterBuffers = 71,
    maxTessControlAtomicCounterBuffers = 72,
    maxTessEvaluationAtomicCounterBuffers = 73,
    maxGeometryAtomicCounterBuffers = 74, maxFragmentAtomicCounterBuffers = 75,
    maxCombinedAtomicCounterBuffers = 76, maxAtomicCounterBufferSize = 77,
    maxTransformFeedbackBuffers = 78,
    maxTransformFeedbackInterleavedComponents = 79, maxCullDistances = 80,
    maxCombinedClipAndCullDistances = 81, maxSamples = 82,
    maxMeshOutputVerticesNv = 83, maxMeshOutputPrimitivesNv = 84,
    maxMeshWorkGroupSizeXNv = 85, maxMeshWorkGroupSizeYNv = 86,
    maxMeshWorkGroupSizeZNv = 87, maxTaskWorkGroupSizeXNv = 88,
    maxTaskWorkGroupSizeYNv = 89, maxTaskWorkGroupSizeZNv = 90,
    maxMeshViewCountNv = 91, maxMeshOutputVerticesExt = 92,
    maxMeshOutputPrimitivesExt = 93, maxMeshWorkGroupSizeXExt = 94,
    maxMeshWorkGroupSizeYExt = 95, maxMeshWorkGroupSizeZExt = 96,
    maxTaskWorkGroupSizeXExt = 97, maxTaskWorkGroupSizeYExt = 98,
    maxTaskWorkGroupSizeZExt = 99, maxMeshViewCountExt = 100,
    maxDualSourceDrawBuffersExt = 101
type
  EnumUniformKind_536871531* {.size: sizeof(cuint).} = enum
    image = 0, sampler = 1, texture = 2, buffer = 3, storageBuffer = 4,
    unorderedAccessView = 5
type
  EnumIncludeType_536871543* {.size: sizeof(cuint).} = enum
    relative = 0, standard = 1
type
  EnumCompilationStatus_536871553* {.size: sizeof(cuint).} = enum
    success = 0, invalidStage = 1, compilationError = 2, internalError = 3,
    nullResultObject = 4, invalidAssembly = 5, validationError = 6,
    transformationError = 7, configurationError = 8
when not declared(StructCompilationResult):
  type
    StructCompilationResult* = object
else:
  static :
    hint("Declaration of " & "StructCompilationResult" &
        " already exists, not redeclaring")
when not declared(StructCompileOptions):
  type
    StructCompileOptions* = object
else:
  static :
    hint("Declaration of " & "StructCompileOptions" &
        " already exists, not redeclaring")
when not declared(StructCompiler):
  type
    StructCompiler* = object
else:
  static :
    hint("Declaration of " & "StructCompiler" &
        " already exists, not redeclaring")
type
  TargetEnv_536871501 = EnumTargetEnv_536871500 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/env.h:35:3
  EnvVersion_536871505 = EnumEnvVersion_536871504 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/env.h:51:3
  SpirvVersion_536871509 = EnumSpirvVersion_536871508 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/env.h:67:3
  SourceLanguage_536871513 = EnumSourceLanguage_536871512 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:34:3
  ShaderKind_536871517 = EnumShaderKind_536871516 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:90:3
  Profile_536871521 = EnumProfile_536871520 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:98:3
  OptimizationLevel_536871525 = EnumOptimizationLevel_536871524 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:105:3
  Limit_536871529 = EnumLimit_536871528 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:211:3
  UniformKind_536871533 = EnumUniformKind_536871532 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:230:3
  CompilerT_536871535 = ptr StructCompiler ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:257:34
  CompileOptionsT_536871537 = ptr StructCompileOptions ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:277:41
  StructIncludeResult_536871539 {.pure, inheritable, bycopy.} = object
    sourceName*: cstring     ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:345:16
    sourceNameLength*: csize_t
    content*: cstring
    contentLength*: csize_t
    userData*: pointer
  IncludeResult_536871541 = StructIncludeResult_536871540 ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:359:3
  IncludeResolveFn_536871545 = proc (a0: pointer; a1: cstring; a2: cint;
                                     a3: cstring; a4: csize_t): ptr IncludeResult_536871542 {.
      cdecl.}                ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:375:35
  IncludeResultReleaseFn_536871547 = proc (a0: pointer; a1: ptr IncludeResult_536871542): void {.
      cdecl.}                ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:380:16
  CompilationResultT_536871549 = ptr StructCompilationResult ## Generated based on /Users/row/projects/shaderc-nim/shaderc/libshaderc/include/shaderc/shaderc.h:511:44
  CompilationStatus_536871551 = EnumCompilationStatus_536871554 ## Generated based on /usr/local/include/shaderc/status.h:33:3
  Limit_536871530 = (when declared(Limit):
    when ownSizeof(Limit) != ownSizeof(Limit_536871529):
      static :
        warning("Declaration of " & "Limit" & " exists but with different size")
    Limit
  else:
    Limit_536871529)
  CompilerT_536871536 = (when declared(CompilerT):
    when ownSizeof(CompilerT) != ownSizeof(CompilerT_536871535):
      static :
        warning("Declaration of " & "CompilerT" &
            " exists but with different size")
    CompilerT
  else:
    CompilerT_536871535)
  EnumEnvVersion_536871504 = (when declared(EnumEnvVersion):
    when ownSizeof(EnumEnvVersion) != ownSizeof(EnumEnvVersion_536871503):
      static :
        warning("Declaration of " & "EnumEnvVersion" &
            " exists but with different size")
    EnumEnvVersion
  else:
    EnumEnvVersion_536871503)
  CompilationStatus_536871552 = (when declared(CompilationStatus):
    when ownSizeof(CompilationStatus) != ownSizeof(CompilationStatus_536871551):
      static :
        warning("Declaration of " & "CompilationStatus" &
            " exists but with different size")
    CompilationStatus
  else:
    CompilationStatus_536871551)
  UniformKind_536871534 = (when declared(UniformKind):
    when ownSizeof(UniformKind) != ownSizeof(UniformKind_536871533):
      static :
        warning("Declaration of " & "UniformKind" &
            " exists but with different size")
    UniformKind
  else:
    UniformKind_536871533)
  IncludeResolveFn_536871546 = (when declared(IncludeResolveFn):
    when ownSizeof(IncludeResolveFn) != ownSizeof(IncludeResolveFn_536871545):
      static :
        warning("Declaration of " & "IncludeResolveFn" &
            " exists but with different size")
    IncludeResolveFn
  else:
    IncludeResolveFn_536871545)
  EnumOptimizationLevel_536871524 = (when declared(EnumOptimizationLevel):
    when ownSizeof(EnumOptimizationLevel) != ownSizeof(EnumOptimizationLevel_536871523):
      static :
        warning("Declaration of " & "EnumOptimizationLevel" &
            " exists but with different size")
    EnumOptimizationLevel
  else:
    EnumOptimizationLevel_536871523)
  IncludeResultReleaseFn_536871548 = (when declared(IncludeResultReleaseFn):
    when ownSizeof(IncludeResultReleaseFn) != ownSizeof(IncludeResultReleaseFn_536871547):
      static :
        warning("Declaration of " & "IncludeResultReleaseFn" &
            " exists but with different size")
    IncludeResultReleaseFn
  else:
    IncludeResultReleaseFn_536871547)
  SourceLanguage_536871514 = (when declared(SourceLanguage):
    when ownSizeof(SourceLanguage) != ownSizeof(SourceLanguage_536871513):
      static :
        warning("Declaration of " & "SourceLanguage" &
            " exists but with different size")
    SourceLanguage
  else:
    SourceLanguage_536871513)
  EnumIncludeType_536871544 = (when declared(EnumIncludeType):
    when ownSizeof(EnumIncludeType) != ownSizeof(EnumIncludeType_536871543):
      static :
        warning("Declaration of " & "EnumIncludeType" &
            " exists but with different size")
    EnumIncludeType
  else:
    EnumIncludeType_536871543)
  EnumTargetEnv_536871500 = (when declared(EnumTargetEnv):
    when ownSizeof(EnumTargetEnv) != ownSizeof(EnumTargetEnv_536871498):
      static :
        warning("Declaration of " & "EnumTargetEnv" &
            " exists but with different size")
    EnumTargetEnv
  else:
    EnumTargetEnv_536871498)
  EnumLimit_536871528 = (when declared(EnumLimit):
    when ownSizeof(EnumLimit) != ownSizeof(EnumLimit_536871527):
      static :
        warning("Declaration of " & "EnumLimit" &
            " exists but with different size")
    EnumLimit
  else:
    EnumLimit_536871527)
  EnumCompilationStatus_536871554 = (when declared(EnumCompilationStatus):
    when ownSizeof(EnumCompilationStatus) != ownSizeof(EnumCompilationStatus_536871553):
      static :
        warning("Declaration of " & "EnumCompilationStatus" &
            " exists but with different size")
    EnumCompilationStatus
  else:
    EnumCompilationStatus_536871553)
  StructIncludeResult_536871540 = (when declared(StructIncludeResult):
    when ownSizeof(StructIncludeResult) != ownSizeof(StructIncludeResult_536871539):
      static :
        warning("Declaration of " & "StructIncludeResult" &
            " exists but with different size")
    StructIncludeResult
  else:
    StructIncludeResult_536871539)
  EnumSpirvVersion_536871508 = (when declared(EnumSpirvVersion):
    when ownSizeof(EnumSpirvVersion) != ownSizeof(EnumSpirvVersion_536871507):
      static :
        warning("Declaration of " & "EnumSpirvVersion" &
            " exists but with different size")
    EnumSpirvVersion
  else:
    EnumSpirvVersion_536871507)
  EnumSourceLanguage_536871512 = (when declared(EnumSourceLanguage):
    when ownSizeof(EnumSourceLanguage) != ownSizeof(EnumSourceLanguage_536871511):
      static :
        warning("Declaration of " & "EnumSourceLanguage" &
            " exists but with different size")
    EnumSourceLanguage
  else:
    EnumSourceLanguage_536871511)
  CompileOptionsT_536871538 = (when declared(CompileOptionsT):
    when ownSizeof(CompileOptionsT) != ownSizeof(CompileOptionsT_536871537):
      static :
        warning("Declaration of " & "CompileOptionsT" &
            " exists but with different size")
    CompileOptionsT
  else:
    CompileOptionsT_536871537)
  TargetEnv_536871502 = (when declared(TargetEnv):
    when ownSizeof(TargetEnv) != ownSizeof(TargetEnv_536871501):
      static :
        warning("Declaration of " & "TargetEnv" &
            " exists but with different size")
    TargetEnv
  else:
    TargetEnv_536871501)
  SpirvVersion_536871510 = (when declared(SpirvVersion):
    when ownSizeof(SpirvVersion) != ownSizeof(SpirvVersion_536871509):
      static :
        warning("Declaration of " & "SpirvVersion" &
            " exists but with different size")
    SpirvVersion
  else:
    SpirvVersion_536871509)
  Profile_536871522 = (when declared(Profile):
    when ownSizeof(Profile) != ownSizeof(Profile_536871521):
      static :
        warning("Declaration of " & "Profile" &
            " exists but with different size")
    Profile
  else:
    Profile_536871521)
  ShaderKind_536871518 = (when declared(ShaderKind):
    when ownSizeof(ShaderKind) != ownSizeof(ShaderKind_536871517):
      static :
        warning("Declaration of " & "ShaderKind" &
            " exists but with different size")
    ShaderKind
  else:
    ShaderKind_536871517)
  IncludeResult_536871542 = (when declared(IncludeResult):
    when ownSizeof(IncludeResult) != ownSizeof(IncludeResult_536871541):
      static :
        warning("Declaration of " & "IncludeResult" &
            " exists but with different size")
    IncludeResult
  else:
    IncludeResult_536871541)
  EnumUniformKind_536871532 = (when declared(EnumUniformKind):
    when ownSizeof(EnumUniformKind) != ownSizeof(EnumUniformKind_536871531):
      static :
        warning("Declaration of " & "EnumUniformKind" &
            " exists but with different size")
    EnumUniformKind
  else:
    EnumUniformKind_536871531)
  OptimizationLevel_536871526 = (when declared(OptimizationLevel):
    when ownSizeof(OptimizationLevel) != ownSizeof(OptimizationLevel_536871525):
      static :
        warning("Declaration of " & "OptimizationLevel" &
            " exists but with different size")
    OptimizationLevel
  else:
    OptimizationLevel_536871525)
  CompilationResultT_536871550 = (when declared(CompilationResultT):
    when ownSizeof(CompilationResultT) != ownSizeof(CompilationResultT_536871549):
      static :
        warning("Declaration of " & "CompilationResultT" &
            " exists but with different size")
    CompilationResultT
  else:
    CompilationResultT_536871549)
  EnumProfile_536871520 = (when declared(EnumProfile):
    when ownSizeof(EnumProfile) != ownSizeof(EnumProfile_536871519):
      static :
        warning("Declaration of " & "EnumProfile" &
            " exists but with different size")
    EnumProfile
  else:
    EnumProfile_536871519)
  EnvVersion_536871506 = (when declared(EnvVersion):
    when ownSizeof(EnvVersion) != ownSizeof(EnvVersion_536871505):
      static :
        warning("Declaration of " & "EnvVersion" &
            " exists but with different size")
    EnvVersion
  else:
    EnvVersion_536871505)
  EnumShaderKind_536871516 = (when declared(EnumShaderKind):
    when ownSizeof(EnumShaderKind) != ownSizeof(EnumShaderKind_536871515):
      static :
        warning("Declaration of " & "EnumShaderKind" &
            " exists but with different size")
    EnumShaderKind
  else:
    EnumShaderKind_536871515)
when not declared(Limit):
  type
    Limit* = Limit_536871529
else:
  static :
    hint("Declaration of " & "Limit" & " already exists, not redeclaring")
when not declared(CompilerT):
  type
    CompilerT* = CompilerT_536871535
else:
  static :
    hint("Declaration of " & "CompilerT" & " already exists, not redeclaring")
when not declared(EnumEnvVersion):
  type
    EnumEnvVersion* = EnumEnvVersion_536871503
else:
  static :
    hint("Declaration of " & "EnumEnvVersion" &
        " already exists, not redeclaring")
when not declared(CompilationStatus):
  type
    CompilationStatus* = CompilationStatus_536871551
else:
  static :
    hint("Declaration of " & "CompilationStatus" &
        " already exists, not redeclaring")
when not declared(UniformKind):
  type
    UniformKind* = UniformKind_536871533
else:
  static :
    hint("Declaration of " & "UniformKind" & " already exists, not redeclaring")
when not declared(IncludeResolveFn):
  type
    IncludeResolveFn* = IncludeResolveFn_536871545
else:
  static :
    hint("Declaration of " & "IncludeResolveFn" &
        " already exists, not redeclaring")
when not declared(EnumOptimizationLevel):
  type
    EnumOptimizationLevel* = EnumOptimizationLevel_536871523
else:
  static :
    hint("Declaration of " & "EnumOptimizationLevel" &
        " already exists, not redeclaring")
when not declared(IncludeResultReleaseFn):
  type
    IncludeResultReleaseFn* = IncludeResultReleaseFn_536871547
else:
  static :
    hint("Declaration of " & "IncludeResultReleaseFn" &
        " already exists, not redeclaring")
when not declared(SourceLanguage):
  type
    SourceLanguage* = SourceLanguage_536871513
else:
  static :
    hint("Declaration of " & "SourceLanguage" &
        " already exists, not redeclaring")
when not declared(EnumIncludeType):
  type
    EnumIncludeType* = EnumIncludeType_536871543
else:
  static :
    hint("Declaration of " & "EnumIncludeType" &
        " already exists, not redeclaring")
when not declared(EnumTargetEnv):
  type
    EnumTargetEnv* = EnumTargetEnv_536871498
else:
  static :
    hint("Declaration of " & "EnumTargetEnv" &
        " already exists, not redeclaring")
when not declared(EnumLimit):
  type
    EnumLimit* = EnumLimit_536871527
else:
  static :
    hint("Declaration of " & "EnumLimit" & " already exists, not redeclaring")
when not declared(EnumCompilationStatus):
  type
    EnumCompilationStatus* = EnumCompilationStatus_536871553
else:
  static :
    hint("Declaration of " & "EnumCompilationStatus" &
        " already exists, not redeclaring")
when not declared(StructIncludeResult):
  type
    StructIncludeResult* = StructIncludeResult_536871539
else:
  static :
    hint("Declaration of " & "StructIncludeResult" &
        " already exists, not redeclaring")
when not declared(EnumSpirvVersion):
  type
    EnumSpirvVersion* = EnumSpirvVersion_536871507
else:
  static :
    hint("Declaration of " & "EnumSpirvVersion" &
        " already exists, not redeclaring")
when not declared(EnumSourceLanguage):
  type
    EnumSourceLanguage* = EnumSourceLanguage_536871511
else:
  static :
    hint("Declaration of " & "EnumSourceLanguage" &
        " already exists, not redeclaring")
when not declared(CompileOptionsT):
  type
    CompileOptionsT* = CompileOptionsT_536871537
else:
  static :
    hint("Declaration of " & "CompileOptionsT" &
        " already exists, not redeclaring")
when not declared(TargetEnv):
  type
    TargetEnv* = TargetEnv_536871501
else:
  static :
    hint("Declaration of " & "TargetEnv" & " already exists, not redeclaring")
when not declared(SpirvVersion):
  type
    SpirvVersion* = SpirvVersion_536871509
else:
  static :
    hint("Declaration of " & "SpirvVersion" & " already exists, not redeclaring")
when not declared(Profile):
  type
    Profile* = Profile_536871521
else:
  static :
    hint("Declaration of " & "Profile" & " already exists, not redeclaring")
when not declared(ShaderKind):
  type
    ShaderKind* = ShaderKind_536871517
else:
  static :
    hint("Declaration of " & "ShaderKind" & " already exists, not redeclaring")
when not declared(IncludeResult):
  type
    IncludeResult* = IncludeResult_536871541
else:
  static :
    hint("Declaration of " & "IncludeResult" &
        " already exists, not redeclaring")
when not declared(EnumUniformKind):
  type
    EnumUniformKind* = EnumUniformKind_536871531
else:
  static :
    hint("Declaration of " & "EnumUniformKind" &
        " already exists, not redeclaring")
when not declared(OptimizationLevel):
  type
    OptimizationLevel* = OptimizationLevel_536871525
else:
  static :
    hint("Declaration of " & "OptimizationLevel" &
        " already exists, not redeclaring")
when not declared(CompilationResultT):
  type
    CompilationResultT* = CompilationResultT_536871549
else:
  static :
    hint("Declaration of " & "CompilationResultT" &
        " already exists, not redeclaring")
when not declared(EnumProfile):
  type
    EnumProfile* = EnumProfile_536871519
else:
  static :
    hint("Declaration of " & "EnumProfile" & " already exists, not redeclaring")
when not declared(EnvVersion):
  type
    EnvVersion* = EnvVersion_536871505
else:
  static :
    hint("Declaration of " & "EnvVersion" & " already exists, not redeclaring")
when not declared(EnumShaderKind):
  type
    EnumShaderKind* = EnumShaderKind_536871515
else:
  static :
    hint("Declaration of " & "EnumShaderKind" &
        " already exists, not redeclaring")
when not declared(compilerInitialize):
  proc compilerInitialize*(): CompilerT_536871536 {.cdecl,
      importc: "shaderc_compiler_initialize".}
else:
  static :
    hint("Declaration of " & "compilerInitialize" &
        " already exists, not redeclaring")
when not declared(compilerRelease):
  proc compilerRelease*(a0: CompilerT_536871536): void {.cdecl,
      importc: "shaderc_compiler_release".}
else:
  static :
    hint("Declaration of " & "compilerRelease" &
        " already exists, not redeclaring")
when not declared(compileOptionsInitialize):
  proc compileOptionsInitialize*(): CompileOptionsT_536871538 {.cdecl,
      importc: "shaderc_compile_options_initialize".}
else:
  static :
    hint("Declaration of " & "compileOptionsInitialize" &
        " already exists, not redeclaring")
when not declared(compileOptionsClone):
  proc compileOptionsClone*(options: CompileOptionsT_536871538): CompileOptionsT_536871538 {.
      cdecl, importc: "shaderc_compile_options_clone".}
else:
  static :
    hint("Declaration of " & "compileOptionsClone" &
        " already exists, not redeclaring")
when not declared(compileOptionsRelease):
  proc compileOptionsRelease*(options: CompileOptionsT_536871538): void {.cdecl,
      importc: "shaderc_compile_options_release".}
else:
  static :
    hint("Declaration of " & "compileOptionsRelease" &
        " already exists, not redeclaring")
when not declared(compileOptionsAddMacroDefinition):
  proc compileOptionsAddMacroDefinition*(options: CompileOptionsT_536871538;
      name: cstring; nameLength: csize_t; value: cstring; valueLength: csize_t): void {.
      cdecl, importc: "shaderc_compile_options_add_macro_definition".}
else:
  static :
    hint("Declaration of " & "compileOptionsAddMacroDefinition" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetSourceLanguage):
  proc compileOptionsSetSourceLanguage*(options: CompileOptionsT_536871538;
                                        lang: SourceLanguage_536871514): void {.
      cdecl, importc: "shaderc_compile_options_set_source_language".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetSourceLanguage" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetGenerateDebugInfo):
  proc compileOptionsSetGenerateDebugInfo*(options: CompileOptionsT_536871538): void {.
      cdecl, importc: "shaderc_compile_options_set_generate_debug_info".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetGenerateDebugInfo" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetOptimizationLevel):
  proc compileOptionsSetOptimizationLevel*(options: CompileOptionsT_536871538;
      level: OptimizationLevel_536871526): void {.cdecl,
      importc: "shaderc_compile_options_set_optimization_level".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetOptimizationLevel" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetForcedVersionProfile):
  proc compileOptionsSetForcedVersionProfile*(options: CompileOptionsT_536871538;
      version: cint; profile: Profile_536871522): void {.cdecl,
      importc: "shaderc_compile_options_set_forced_version_profile".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetForcedVersionProfile" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetIncludeCallbacks):
  proc compileOptionsSetIncludeCallbacks*(options: CompileOptionsT_536871538;
      resolver: IncludeResolveFn_536871546;
      resultReleaser: IncludeResultReleaseFn_536871548; userData: pointer): void {.
      cdecl, importc: "shaderc_compile_options_set_include_callbacks".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetIncludeCallbacks" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetSuppressWarnings):
  proc compileOptionsSetSuppressWarnings*(options: CompileOptionsT_536871538): void {.
      cdecl, importc: "shaderc_compile_options_set_suppress_warnings".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetSuppressWarnings" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetTargetEnv):
  proc compileOptionsSetTargetEnv*(options: CompileOptionsT_536871538;
                                   target: TargetEnv_536871502; version: cint): void {.
      cdecl, importc: "shaderc_compile_options_set_target_env".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetTargetEnv" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetTargetSpirv):
  proc compileOptionsSetTargetSpirv*(options: CompileOptionsT_536871538;
                                     version: SpirvVersion_536871510): void {.
      cdecl, importc: "shaderc_compile_options_set_target_spirv".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetTargetSpirv" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetWarningsAsErrors):
  proc compileOptionsSetWarningsAsErrors*(options: CompileOptionsT_536871538): void {.
      cdecl, importc: "shaderc_compile_options_set_warnings_as_errors".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetWarningsAsErrors" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetLimit):
  proc compileOptionsSetLimit*(options: CompileOptionsT_536871538; limit: Limit_536871530;
                               value: cint): void {.cdecl,
      importc: "shaderc_compile_options_set_limit".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetLimit" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetAutoBindUniforms):
  proc compileOptionsSetAutoBindUniforms*(options: CompileOptionsT_536871538;
      autoBind: bool): void {.cdecl, importc: "shaderc_compile_options_set_auto_bind_uniforms".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetAutoBindUniforms" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetAutoCombinedImageSampler):
  proc compileOptionsSetAutoCombinedImageSampler*(options: CompileOptionsT_536871538;
      upgrade: bool): void {.cdecl, importc: "shaderc_compile_options_set_auto_combined_image_sampler".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetAutoCombinedImageSampler" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetHlslIoMapping):
  proc compileOptionsSetHlslIoMapping*(options: CompileOptionsT_536871538;
                                       hlslIomap: bool): void {.cdecl,
      importc: "shaderc_compile_options_set_hlsl_io_mapping".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetHlslIoMapping" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetHlslOffsets):
  proc compileOptionsSetHlslOffsets*(options: CompileOptionsT_536871538;
                                     hlslOffsets: bool): void {.cdecl,
      importc: "shaderc_compile_options_set_hlsl_offsets".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetHlslOffsets" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetBindingBase):
  proc compileOptionsSetBindingBase*(options: CompileOptionsT_536871538;
                                     kind: UniformKind_536871534; base: cint): void {.
      cdecl, importc: "shaderc_compile_options_set_binding_base".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetBindingBase" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetBindingBaseForStage):
  proc compileOptionsSetBindingBaseForStage*(options: CompileOptionsT_536871538;
      shaderKind: ShaderKind_536871518; kind: UniformKind_536871534; base: cint): void {.
      cdecl, importc: "shaderc_compile_options_set_binding_base_for_stage".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetBindingBaseForStage" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetPreserveBindings):
  proc compileOptionsSetPreserveBindings*(options: CompileOptionsT_536871538;
      preserveBindings: bool): void {.cdecl, importc: "shaderc_compile_options_set_preserve_bindings".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetPreserveBindings" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetAutoMapLocations):
  proc compileOptionsSetAutoMapLocations*(options: CompileOptionsT_536871538;
      autoMap: bool): void {.cdecl, importc: "shaderc_compile_options_set_auto_map_locations".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetAutoMapLocations" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetHlslRegisterSetAndBindingForStage):
  proc compileOptionsSetHlslRegisterSetAndBindingForStage*(
      options: CompileOptionsT_536871538; shaderKind: ShaderKind_536871518;
      reg: cstring; set: cstring; binding: cstring): void {.cdecl, importc: "shaderc_compile_options_set_hlsl_register_set_and_binding_for_stage".}
else:
  static :
    hint("Declaration of " &
        "compileOptionsSetHlslRegisterSetAndBindingForStage" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetHlslRegisterSetAndBinding):
  proc compileOptionsSetHlslRegisterSetAndBinding*(options: CompileOptionsT_536871538;
      reg: cstring; set: cstring; binding: cstring): void {.cdecl,
      importc: "shaderc_compile_options_set_hlsl_register_set_and_binding".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetHlslRegisterSetAndBinding" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetHlslFunctionality1):
  proc compileOptionsSetHlslFunctionality1*(options: CompileOptionsT_536871538;
      enable: bool): void {.cdecl, importc: "shaderc_compile_options_set_hlsl_functionality1".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetHlslFunctionality1" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetHlsl16bitTypes):
  proc compileOptionsSetHlsl16bitTypes*(options: CompileOptionsT_536871538;
                                        enable: bool): void {.cdecl,
      importc: "shaderc_compile_options_set_hlsl_16bit_types".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetHlsl16bitTypes" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetVulkanRulesRelaxed):
  proc compileOptionsSetVulkanRulesRelaxed*(options: CompileOptionsT_536871538;
      enable: bool): void {.cdecl, importc: "shaderc_compile_options_set_vulkan_rules_relaxed".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetVulkanRulesRelaxed" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetInvertY):
  proc compileOptionsSetInvertY*(options: CompileOptionsT_536871538;
                                 enable: bool): void {.cdecl,
      importc: "shaderc_compile_options_set_invert_y".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetInvertY" &
        " already exists, not redeclaring")
when not declared(compileOptionsSetNanClamp):
  proc compileOptionsSetNanClamp*(options: CompileOptionsT_536871538;
                                  enable: bool): void {.cdecl,
      importc: "shaderc_compile_options_set_nan_clamp".}
else:
  static :
    hint("Declaration of " & "compileOptionsSetNanClamp" &
        " already exists, not redeclaring")
when not declared(compileIntoSpv):
  proc compileIntoSpv*(compiler: CompilerT_536871536; sourceText: cstring;
                       sourceTextSize: csize_t; shaderKind: ShaderKind_536871518;
                       inputFileName: cstring; entryPointName: cstring;
                       additionalOptions: CompileOptionsT_536871538): CompilationResultT_536871550 {.
      cdecl, importc: "shaderc_compile_into_spv".}
else:
  static :
    hint("Declaration of " & "compileIntoSpv" &
        " already exists, not redeclaring")
when not declared(compileIntoSpvAssembly):
  proc compileIntoSpvAssembly*(compiler: CompilerT_536871536;
                               sourceText: cstring; sourceTextSize: csize_t;
                               shaderKind: ShaderKind_536871518;
                               inputFileName: cstring; entryPointName: cstring;
                               additionalOptions: CompileOptionsT_536871538): CompilationResultT_536871550 {.
      cdecl, importc: "shaderc_compile_into_spv_assembly".}
else:
  static :
    hint("Declaration of " & "compileIntoSpvAssembly" &
        " already exists, not redeclaring")
when not declared(compileIntoPreprocessedText):
  proc compileIntoPreprocessedText*(compiler: CompilerT_536871536;
                                    sourceText: cstring;
                                    sourceTextSize: csize_t;
                                    shaderKind: ShaderKind_536871518;
                                    inputFileName: cstring;
                                    entryPointName: cstring;
                                    additionalOptions: CompileOptionsT_536871538): CompilationResultT_536871550 {.
      cdecl, importc: "shaderc_compile_into_preprocessed_text".}
else:
  static :
    hint("Declaration of " & "compileIntoPreprocessedText" &
        " already exists, not redeclaring")
when not declared(assembleIntoSpv):
  proc assembleIntoSpv*(compiler: CompilerT_536871536; sourceAssembly: cstring;
                        sourceAssemblySize: csize_t;
                        additionalOptions: CompileOptionsT_536871538): CompilationResultT_536871550 {.
      cdecl, importc: "shaderc_assemble_into_spv".}
else:
  static :
    hint("Declaration of " & "assembleIntoSpv" &
        " already exists, not redeclaring")
when not declared(resultRelease):
  proc resultRelease*(result: CompilationResultT_536871550): void {.cdecl,
      importc: "shaderc_result_release".}
else:
  static :
    hint("Declaration of " & "resultRelease" &
        " already exists, not redeclaring")
when not declared(resultGetLength):
  proc resultGetLength*(result: CompilationResultT_536871550): csize_t {.cdecl,
      importc: "shaderc_result_get_length".}
else:
  static :
    hint("Declaration of " & "resultGetLength" &
        " already exists, not redeclaring")
when not declared(resultGetNumWarnings):
  proc resultGetNumWarnings*(result: CompilationResultT_536871550): csize_t {.
      cdecl, importc: "shaderc_result_get_num_warnings".}
else:
  static :
    hint("Declaration of " & "resultGetNumWarnings" &
        " already exists, not redeclaring")
when not declared(resultGetNumErrors):
  proc resultGetNumErrors*(result: CompilationResultT_536871550): csize_t {.
      cdecl, importc: "shaderc_result_get_num_errors".}
else:
  static :
    hint("Declaration of " & "resultGetNumErrors" &
        " already exists, not redeclaring")
when not declared(resultGetCompilationStatus):
  proc resultGetCompilationStatus*(a0: CompilationResultT_536871550): CompilationStatus_536871552 {.
      cdecl, importc: "shaderc_result_get_compilation_status".}
else:
  static :
    hint("Declaration of " & "resultGetCompilationStatus" &
        " already exists, not redeclaring")
when not declared(resultGetBytes):
  proc resultGetBytes*(result: CompilationResultT_536871550): cstring {.cdecl,
      importc: "shaderc_result_get_bytes".}
else:
  static :
    hint("Declaration of " & "resultGetBytes" &
        " already exists, not redeclaring")
when not declared(resultGetErrorMessage):
  proc resultGetErrorMessage*(result: CompilationResultT_536871550): cstring {.
      cdecl, importc: "shaderc_result_get_error_message".}
else:
  static :
    hint("Declaration of " & "resultGetErrorMessage" &
        " already exists, not redeclaring")
when not declared(getSpvVersion):
  proc getSpvVersion*(version: ptr cuint; revision: ptr cuint): void {.cdecl,
      importc: "shaderc_get_spv_version".}
else:
  static :
    hint("Declaration of " & "getSpvVersion" &
        " already exists, not redeclaring")
when not declared(parseVersionProfile):
  proc parseVersionProfile*(str: cstring; version: ptr cint;
                            profile: ptr Profile_536871522): bool {.cdecl,
      importc: "shaderc_parse_version_profile".}
else:
  static :
    hint("Declaration of " & "parseVersionProfile" &
        " already exists, not redeclaring")