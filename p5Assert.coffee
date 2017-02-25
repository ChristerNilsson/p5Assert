myCodeMirror = 0
sel1 = 0
sel2 = 0
table = 0
chapter = ""
exercise = ""

pp = (obj) -> (JSON.stringify obj).replace /"/g, ''

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
  row = tabell.insertRow -1
  cell1 = row.insertCell -1
  cell2 = row.insertCell -1
  cell3 = row.insertCell -1
  cell1.innerHTML = call
  cell2.innerHTML = JSON.stringify expected
  cell3.innerHTML = if actual == undefined then "error" else JSON.stringify actual
  cell1.style.backgroundColor = '#FFFF00'
  cell2.style.backgroundColor = '#00FF00'
  try 
    chai.assert.deepEqual expected, actual
    cell3.style.backgroundColor = '#00FF00'
  catch  
    cell3.style.backgroundColor = '#FF0000'

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
  
  chapter = _.keys(data)[0]
  sel1.val(chapter).change()
  exercise = _.keys(data[chapter])[0]
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
    try
      code = transpile b + "\nreturn " + call
      try
        eval "result = " + code 
      catch e
        result = e.stack.split('\n')[0]
    catch e
      result = e.name + ": " + e.message
    tableAppend call, expectedResult, result