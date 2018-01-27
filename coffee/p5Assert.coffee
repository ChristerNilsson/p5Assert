myCodeMirror = null
sel1 = null
sel2 = null
chapter = ""
exercise = ""
msg = null
timeout = null

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
	setLinks()
	myCodeMirror.setValue(b)
	runAll()
	myCodeMirror.focus()

setLinks = ->
	linksClear()
	linkAppend links,	"https://github.com/ChristerNilsson/p5Assert/blob/master/README.md", "Help"
	linkAppend links,	"https://p5js.org/reference", "p5"
	linkAppend links,	"http://coffeescript.org", "Coffeescript"
	linkAppend links,	"https://www.w3schools.com/js", "Javascript"
	linkAppend links,	"https://github.com/ChristerNilsson/Nilsson/blob/master/README.md", "Nilsson"
	linkAppend links,	"http://underscorejs.org/", "_"

	for text,link of data[chapter][exercise]["e"]
		linkAppend links,link,text

tableClear = -> $("#tabell tr").remove()
axiomClear = -> $("#axioms tr").remove()
linksClear = -> $("#links tr").remove()

tableAppend = (t, call, expected, actual, show) -> # exakt tre kolumner
	sp = "&nbsp;"
	row = t.insertRow -1

	cell1 = row.insertCell -1
	cell1.style.backgroundColor = '#FFFF00'

	cell2 = row.insertCell -1
	cell2.style.backgroundColor = '#00FF00'

	cell3 = row.insertCell -1
	cell3.style.backgroundColor = if _.isEqual(expected, actual) then '#00FF00' else '#FF0000'

	if show
		cell1.innerHTML = sp + call + sp
		cell2.innerHTML = sp + JSON.stringify(expected) + sp
		cell3.innerHTML = sp + JSON.stringify(actual) + sp
	else
		cell1.innerHTML = sp + "?" + sp
		cell2.innerHTML = sp + "?" + sp
		cell3.innerHTML = sp + "?" + sp

axiomAppend = (t, call, expected, actual) -> # exakt två kolumner
	sp = "&nbsp;"
	row = t.insertRow -1

	cell1 = row.insertCell -1
	cell1.innerHTML = sp + call + sp
	cell1.style.backgroundColor = '#FFFF00'

	cell2 = row.insertCell -1
	cell2.innerHTML = sp + JSON.stringify(expected) + sp
	cell2.style.backgroundColor = '#00FF00' # if _.isEqual(expected, actual) then '#00FF00' else '#FF0000'

d = (s) -> "'" + s + "'"
dd = (s) -> '"' + s + '"'

linkAppend = (t, link, text) -> # exakt en kolumn
	row = t.insertRow -1
	cell1 = row.insertCell -1
	s = '<a href=' + d(link)
	s += ' target=' + d('_blank')
	s += ' onmouseover=' + d('this.style.color=' + dd('yellow') + ';')
	s += ' onmouseout='  + d('this.style.color=' + dd('black') + ';')
	s += '>'
	s += text
	s += '</a>'
	cell1.innerHTML = s

changeLayout = ->
	w = $(window).width()
	$(".CodeMirror").width w-215-15
	$("#msg").width w-220-15
	runDelayed()

resizeTimer=0
$(window).resize () ->
	clearTimeout resizeTimer
	resizeTimer = setTimeout changeLayout, 10

setup = ->
	msg = $ '#msg'
	sel1 = $ '#sel1'
	sel2 = $ '#sel2'
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
	myCodeMirror.on "change", runDelayed

	chapter = _.keys(data)[0]
	sel1.val(chapter).change()
	exercise = _.keys(data[chapter])[0]
	sel2.val(exercise).change()

	myCodeMirror.focus()
	window.resizeTo 1000,750
	changeLayout()

runDelayed = ->
	if timeout then clearTimeout timeout
	timeout = setTimeout runAll, 200

runAll = ->
	b = myCodeMirror.getValue()
	data[chapter][exercise]["b"] = b

	cdict = data[chapter][exercise]["c"]
	fdict = data[chapter][exercise]["f"]
	ddict = data[chapter][exercise]["d"]

	calls = []
	calls = calls.concat ('(' + call + ')' for call of cdict)
	calls = calls.concat ('(' + call + ')' for call of fdict)
	calls = calls.concat ('(' + call + ')' for call of ddict)

	error = ""
	try
		code = transpile b
		try
			results = eval transpile b + "\nreturn [" + calls + "]"
		catch e
			error = e.stack.split('\n')[0]
	catch e
		error = e.name + ": " + e.message

	tableClear()
	axiomClear()

	setMsg error
	if error == ""

		offset1 = 0
		offset2 = 0

		if cdict
			for call,i in _.keys(cdict)
				tableAppend tabell, call, cdict[call], results[i], true
			offset1 = _.keys(cdict).length

		if fdict # secret
			for call,i in _.keys(fdict)
				tableAppend tabell, call, fdict[call], results[offset1 + i], false
			offset2 = offset1 + _.keys(fdict).length

		h = $('#tabell').height();
		document.getElementById('axioms').style.top = "#{450 + h}px"

		if ddict
			for call,i in _.keys(ddict)
				axiomAppend axioms, call, ddict[call], results[offset2 + i]
