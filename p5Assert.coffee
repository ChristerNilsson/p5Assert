myCodeMirror = 0
msg = 0
sel1=0
sel2=0
table=0
chapter=""
exercise=""

fillSelect = (sel, dict) ->
  sel.empty()
  for key of dict 
    sel.append $("<option>").attr('value', key).text(key)

sel1change = (sel) ->
  chapter = sel.value
  exercise = ""
  fillSelect sel2, data[chapter]

sel2change = (sel) ->
  exercise = sel.value
  b = data[chapter][exercise]["b"]
  myCodeMirror.setValue(b)
  run0()
  myCodeMirror.focus() 

tableClear = ->
  $("#tabell tr").remove()

tableAppend = (call, expected, actual) ->
  row = tabell.insertRow -1
  cell1 = row.insertCell -1
  cell2 = row.insertCell -1
  cell3 = row.insertCell -1
  cell1.innerHTML = call
  cell2.innerHTML = JSON.stringify expected
  cell3.innerHTML = JSON.stringify actual    

changeLayout = ->
  w = $(window).width()
  $(".CodeMirror").width(w-215)
  $("#msg").width(w-220)

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
  myCodeMirror.on "change", run0

  help = createA('https://github.com/ChristerNilsson/p5Assert/blob/master/README.md', 'help', '_blank')
  help.position 10,430
  
  chapter = 'Assert1'
  sel1.val(chapter).change()
  exercise = 'Operator1'
  sel2.val(exercise).change()
  
  myCodeMirror.focus()
  window.resizeTo 1000,750
  changeLayout()

setMsg = (txt) ->
  msg.val txt
  if txt == ''
    msg.css 'background-color' , '#FFFFFF'
  else 
    msg.css 'background-color' , '#FF0000'

run0 = ->
  b = myCodeMirror.getValue()
  data[chapter][exercise]["b"] = b

  tableClear()
  dict = data[chapter][exercise]["c"]    
  #result = undefined
  for call,expectedResult of dict 
    run 0, "result = " + transpile(b + "\nreturn " + call)    
    if result is undefined 
      tableAppend call, expectedResult, ""
    else
      tableAppend call, expectedResult, result

run = (n, code) ->
  try 
    setMsg ''
    eval code
  catch err 
    setMsg err.stack
  