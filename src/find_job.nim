import strutils

proc findJob*(file: string, job: string): string =
  let file_content = readFile(file)
  var capturing = false
  var resultStr = ""

  for line in file_content.splitLines():
    if line == job & ">":
      capturing = true
      continue

    if capturing:
      if line.endsWith(">"):
        break
      resultStr.add(line & "\n")

  return resultStr
