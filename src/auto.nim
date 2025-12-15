import os

proc getProjectName(): string =
  result = splitPath(getCurrentDir()).tail

proc getFullCommand(): string =
  let projectName = getProjectName()
  result = "default>\necho '> compiling src/" & projectName & ".nim'\ncc src/" & projectName & ".nim"

proc generateConfig*() =
  writeFile(".Nimcraft", getFullCommand())
