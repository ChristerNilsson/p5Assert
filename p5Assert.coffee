myCodeMirror = null
sel1 = null
sel2 = null
chapter = ""
exercise = ""
msg = null

pp = (obj) -> (JSON.stringify obj).replace /"/g, ''

setMsg = (txt) ->
	msg.val txt
	msg.css 'background-color', if txt == '' then '#FFFFFF' else '#FF0000'

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

tableClear = -> $("#tabell tr").remove()
axiomClear = -> $("#axioms tr").remove()

tableAppend = (t, call, expected, actual) ->
	sp = "&nbsp;"
	row = t.insertRow -1

	cell1 = row.insertCell -1
	cell1.innerHTML = sp + call + sp
	cell1.style.backgroundColor = '#FFFF00'

	cell2 = row.insertCell -1
	cell2.innerHTML = sp + JSON.stringify(expected) + sp
	cell2.style.backgroundColor = '#00FF00'

	if actual isnt undefined
		cell3 = row.insertCell -1
		cell3.innerHTML = if actual == undefined then sp + "error" + sp else sp + JSON.stringify(actual) + sp
		cell3.style.backgroundColor = if _.isEqual(expected, actual) then '#00FF00' else '#FF0000'

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

	tableClear()
	axiomClear()

	setMsg error
	if error == ""
		if dict 
			for call,i in Object.keys(dict)
				tableAppend tabell, call, dict[call], results[i]

		document.getElementById('axioms').style.top="#{450 + _.size(dict)*29}px" 
		for call,expectedResult of data[chapter][exercise]["d"] 
			tableAppend axioms, call, expectedResult