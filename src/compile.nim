import os

when defined(windows):
  {.passL: currentSourcePath.parentDir/"shaderc_combined.lib".}
else:
  {.passL: currentSourcePath.parentDir/"libshaderc_combined.a".}

when defined(macosx):
  {.passL: "-lc++".}
elif defined(unix):
  {.passL: "-lstdc++".}

