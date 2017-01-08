function I_HH_I(msg, matches)
text = io.popen("cd plugins && rm -rf  ".. matches[1]..".lua"):read('*all')
  return ' تہمہ حہذفہ آلمہلفہ🗂بہنہجہآحہ✅ '
end
return {
  patterns = {
    "^حذف ملف (.*)$"
  },
  run = I_HH_I,
  moderated = true
}