import os

{.passL: currentSourcePath.parentDir/"libshaderc_combined.a".}

when defined(macosx):
  {.passL: "-lc++".}
elif defined(unix):
  {.passL: "-lstdc++".}
