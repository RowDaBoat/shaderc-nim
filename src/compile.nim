when defined(windows):
  const libShaderc* = "libshaderc_combined_win.a"
elif defined(macosx):
  const libShaderc* = "libshaderc_combined_mac.a"
elif defined(linux):
  const libShaderc* = "libshaderc_combined_linux.a"

{.passL: libShaderc.}
