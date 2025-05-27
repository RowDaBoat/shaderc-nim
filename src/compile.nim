import os

{.passL: currentSourcePath.parentDir/"libshaderc_combined.a".}
{.passL: "-lc++".}
