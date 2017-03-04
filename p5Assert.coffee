myCodeMirror = 0
sel1 = 0
sel2 = 0
table = 0
chapter = ""
exercise = ""
msg = null

pp = (obj) -> (JSON.stringify obj).replace /"/g, ''

setMsg = (txt) ->
  msg.val txt
  if txt == ''
    msg.css 'background-color' , '#FFFFFF'
  else
    msg.css 'background-color' , '#FF0000'

fillSelect = (sel, dict) ->
  sel.empty()
  for key of dict 
    sel.append $("<option>").attr('value', key).text(key)

sel1change = (sel) ->
  chapter = sel.value
  fillSelect sel2, data[chapter]
  exercise = _.keys(data[chapter])[0]
  sel2.val(exercise).change()

sel2change = (sel) ->
  exercise = sel.value
  b = data[chapter][exercise]["b"]
  myCodeMirror.setValue(b)
  runAll()
  myCodeMirror.focus() 

tableClear = ->
  $("#tabell tr").remove()

tableAppend = (call, expected, actual) ->
  sp = "&nbsp;"
  row = tabell.insertRow -1

  cell1 = row.insertCell -1
  cell2 = row.insertCell -1
  cell3 = row.insertCell -1

  cell1.innerHTML = sp + call + sp
  cell2.innerHTML = sp + JSON.stringify(expected) + sp
  cell3.innerHTML = if actual == undefined then sp + "error" + sp else sp + JSON.stringify(actual) + sp

  cell1.style.backgroundColor = '#FFFF00'
  cell2.style.backgroundColor = '#00FF00'
  if compare(expected, actual) == 0
    cell3.style.backgroundColor = '#00FF00'
  else
    cell3.style.backgroundColor = '#FF0000'

changeLayout = ->
  w = $(window).width()
  $(".CodeMirror").width(w-215-15)
  $("#msg").width w-220-15

resizeTimer=0
$(window).resize () ->
  clearTimeout(resizeTimer)
  resizeTimer = setTimeout(changeLayout, 10)

setup = ->
  msg = $('#msg')
  sel1 = $('#sel1')
  sel2 = $('#sel2')
  table = $('#tabell')
  fillSelect sel1, data

window.onload = ->
  ta = document.getElementById "code"
  myCodeMirror = CodeMirror.fromTextArea ta, 
    lineNumbers: true
    mode: "coffeescript"
    keyMap: "sublime"
    theme: "dracula"
    autoCloseBrackets: true
    lineWiseCopyCut: true
    tabSize: 2
    indentWithTabs: true
  
  $(".CodeMirror").css 'font-size',"16pt"
  myCodeMirror.on "change", runAll

  help = createA('https://github.com/ChristerNilsson/p5Assert/blob/master/README.md', 'Help', '_blank')
  #help = createA 'https://christernilsson.github.io/p5Assert/README.md', 'help', '_blank'

  help.position 10,430
  
  chapter = _.keys(data)[0]
  sel1.val(chapter).change()
  exercise = _.keys(data[chapter])[0]
  sel2.val(exercise).change()
  
  myCodeMirror.focus()
  window.resizeTo 1000,750
  changeLayout()

runAll = ->
  #start = millis()
  b = myCodeMirror.getValue()
  data[chapter][exercise]["b"] = b
  tableClear()
  dict = data[chapter][exercise]["c"]    
 
  calls = []
  for call,expectedResult of dict 
    calls.push "(" + call + ")"

  error = ""
  try
    code = transpile b + "\nreturn [" + calls + "]"
    try
      eval "results = " + code 
    catch e
      error = e.stack.split('\n')[0]
  catch e
    error = e.name + ": " + e.message

  setMsg error
  if error == ""
    i=0
    for call,expectedResult of dict 
      tableAppend call, expectedResult, results[i]
      i += 1

  #print round(millis() - start)    

# runAll = ->
#   b = myCodeMirror.getValue()
#   data[chapter][exercise]["b"] = b
#   tableClear()
#   dict = data[chapter][exercise]["c"]    
#   for call,expectedResult of dict 
#     start = millis()
#     try
#       code = transpile b + "\nreturn " + call
#       try
#         eval "result = " + code 
#         result = ""
#       catch e
#         result = e.stack.split('\n')[0]
#     catch e
#       result = e.name + ": " + e.message
#     tableAppend call, expectedResult, result
#     print round(millis() - start), call        