import system except getCommand, setCommand, switch, `--`,
  packageName, version, author, description, license, srcDir, binDir, backend,
  skipDirs, skipFiles, skipExt, installDirs, installFiles, installExt, bin, foreignDeps,
  requires, task, packageName
import nimscriptapi, strutils
# Package

version       = "0.1.0"
author        = "Anonymous"
description   = "Implements soundex"
license       = "MIT"
srcDir        = "src"



# Dependencies

requires "nim >= 1.2.0"

onExit()
