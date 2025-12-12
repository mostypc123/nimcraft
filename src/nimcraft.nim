import os
import strutils
import find_job

var file = ".Nimcraft"

when isMainModule:
  if commandLineParams().len() == 0:
    discard execShellCmd(findJob(file, "default"))
  for i in commandLineParams():
    if i.startsWith(".File"):
      file = i.replace(".File=", "")
    else:
      discard execShellCmd(findJob(file, i))
