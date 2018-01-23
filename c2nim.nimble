version       = "0.9.13"
author        = "Andreas Rumpf"
description   = "c2nim is a tool to translate Ansi C code to Nim."
license       = "MIT"
skipDirs      = @["doc"]

bin = @["c2nim"]

requires "nim 0.17.2", "compiler 0.17.2"

task tests, "runs c2nim tests":
  exec "nim c --p:~/.choosenim/toolchains/nim-0.17.2 c2nim.nim"
  exec "nim c --run testsuite/tester.nim"