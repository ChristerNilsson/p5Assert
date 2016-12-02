myCodeMirror = 0
sel1 = 0
sel2 = 0
table = 0
chapter = ""
exercise = ""

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
  runAll()
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
  cell3.innerHTML = if actual == undefined then "error" else JSON.stringify actual
  row.style.backgroundColor = if _.isEqual expected, actual then '#00FF00' else '#FF0000'

changeLayout = ->
  w = $(window).width()
  $(".CodeMirror").width(w-215)

resizeTimer=0
$(window).resize () ->
  clearTimeout(resizeTimer)
  resizeTimer = setTimeout(changeLayout, 10)

setup = ->
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

  help = createA('https://github.com/ChristerNilsson/p5Assert/blob/master/README.md', 'help', '_blank')
  help.position 10,430
  
  chapter = 'Assert1'
  sel1.val(chapter).change()
  exercise = 'Operator1'
  sel2.val(exercise).change()
  
  myCodeMirror.focus()
  window.resizeTo 1000,750
  changeLayout()

runAll = ->
  b = myCodeMirror.getValue()
  data[chapter][exercise]["b"] = b
  tableClear()
  dict = data[chapter][exercise]["c"]    
  for call,expectedResult of dict 
    msg = run "result = " + transpile(b + "\nreturn " + call)    
    tableAppend call, expectedResult, if msg == "" then result else msg.split('\n')[0]

run = (code) ->
  try 
    eval code
    return ""
  catch err 
    err.stack
  