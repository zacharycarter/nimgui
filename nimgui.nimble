# Package

version     = "1.7.0"
author      = "Leonardo Mariscal & Zachary Carter"
description = "bindings to cimgui - https://github.com/cimgui/cimgui"
license     = "MIT"
srcDir      = "src"
installExt    = @["nim"]


# Dependencies

requires "nim >= 0.19.0"

task gen, "build the generator":
  exec "nim c -r -d:ssl tools/imgui_gen.nim"
  exec "nimble install -y"
