# Package

version     = "0.1.0"
author      = "Leonardo Mariscal"
description = "A new awesome nimble package"
license     = "MIT"
srcDir      = "src"
installExt    = @["nim"]


# Dependencies

requires "nim >= 0.19.0"

task gen, "build the generator":
  exec "nim c -r -d:ssl tools/imgui_gen.nim"
  exec "nimble install"
