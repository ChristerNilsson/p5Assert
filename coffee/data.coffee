# b : comment line. LOC and keyword clues
# a : Solution in Coffeescript.
# c : call in Coffeescript syntax, three columns
# d : axioms, two columns
# e : links
# OBS: String interpolation fungerar ej.

data =

#########################
	"Nyheter" :
#########################

		"Nyheter" :
			b:"""
# NYHETER 2017 November
#   A3: SingaporeMath
#   A6: AverageTime
# NYHETER 2017 Mars
#   A6: CelsiusFahrenheit
# NYHETER 2017 Mars
#   A3: Introduktion, Nim, Sort, Växelcykel, Kalkylator
#   A4: Earth, Glosor, Glosor[]
#   A5: Palindrom, Rövarspråk, Advanced
#   A7: Morse, Bråktal, Simplex, Bignum, Complex, Nian, Compressor
#   A8: List recursion, Pokerhand, Matematik

# Klicka nu på A0!
"""
			e:
				"Intro to Coffeescript" : "http://blog.teamtreehouse.com/the-absolute-beginners-guide-to-coffeescript"
				"Snake Game" : "https://www.youtube.com/watch?v=AaGK-fj-BAM"
				"Asteroids with p5" : "https://www.youtube.com/watch?v=hacZU523FyM"
				"Matrix LOC:86" : "https://www.youtube.com/watch?v=S1TQCi9axzg"
				"Matrix LOC:25" : "https://github.com/ChristerNilsson/Lab/blob/master/2017/018-Green%20Rain/sketch.coffee"
				"Matter.js" : "https://www.youtube.com/watch?v=urR596FsU68"
				"Sublime Text" : "https://www.sublimetext.com"
				"Jeremy Ashkenas" : "https://sv.wikipedia.org/wiki/Jeremy_Ashkenas"
				"Lauren McCarthy" : "http://lauren-mccarthy.com/"
				"Brendan Eich" : "https://en.wikipedia.org/wiki/Brendan_Eich"

#########################
	"A0: One Parameter" :
#########################

		Ture :
			b: """
# Maskinen Ture är trasig! Ture är ledsen. Du måste laga Ture!
# Skickar man in en etta till Ture ska en etta komma ut.
# Just nu skickar Ture alltid ut nollor. Ture har hakat upp sig!
# Namnet på det man skickar in till Ture står mellan parenteserna. Namnet är x.
# x kan vara olika saker. Ibland en nolla och ibland en etta.
# Efter pilen talar man om vad som ska komma ut från Ture.
#   Den gula kolumnen innehåller det som skickas in till Ture.
#   Den gröna kolumnen innehåller det som ska komma ut ur Ture.
#   Den röda kolumnen innehåller det som kommer ut ur Ture, just nu.
# Se till att göra de RÖDA cellerna GRÖNA!
# Tryck nu på PgDn och gör Ture glad igen!
#   Ändra nollan till en etta. Nu skickas bara ettor ut och inga nollor.
#   Ändra ettan till ett x.    Nu är allt som det ska och Ture är glad igen!
# Gå till nästa uppgift genom att klicka på Wilma i listan till vänster.

Ture = (x) -> 0
"""
			a: "Ture = (x) -> x"
			c:
				"Ture 0" : 0
				"Ture 1" : 1
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Wilma:
			b: """
			# Om man skickar en sjua till Wilma ska det komma tillbaks en åtta.
			# Om man skickar en åtta till Wilma ska det komma tillbaks en nia.
			# Vad ska Wilma skicka tillbaks om det kommer in ett x ?
			# Tabellen längst ner innehåller lite ledtrådar.

			Wilma = (x) -> x
			"""
			a: "Wilma = (x) -> x+1"
			c:
				"Wilma 7" : 8
				"Wilma 8" : 9
			d:
				"7 + 1" : 8
				"8 + 1" : 9
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Noel:
			b: """
			# Någon av dessa löser problemet: + *

			Noel = (x) ->
			"""
			a: "Noel = (x) -> 2*x"
			c:
				"Noel 5" : 10
				"Noel 6" : 12
			d:
				"3 + 2" : 5
				"3 * 2" : 6
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Greta:
			b: """
			# *

			Greta = (x) ->
			"""
			a: "Greta = (x) -> x*x"
			c:
				"Greta 1" : 1
				"Greta 2" : 4
				"Greta 3" : 9
				"Greta 4" : 16
				"Greta 5" : 25
			d:
				"3 * 2" : 6
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Viktor:
			b: """
			# -

			Viktor = (x) ->
			"""
			a: "Viktor = (x) -> -x"
			c:
				"Viktor -4" : 4
				"Viktor 3" : -3
			d:
				"3 - 2" : 1
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Sabrina:
			b: """
			# -

			Sabrina = (x) ->
			"""
			a: "Sabrina = (x) -> x-2"
			c:
				"Sabrina 7" : 5
				"Sabrina 17" : 15
			d:
				"3 - 2" : 1
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		David:
			b: """
			# /

			David = (x) ->
			"""
			a: "David = (x) -> x/2"
			c:
				"David 8" : 4
				"David 6" : 3
			d:
				"6 / 3" : 2
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Gabriella:
			b: """
			# %

			Gabriella = (x) ->
			"""
			a: "Gabriella = (x) -> x % 2"
			c:
				"Gabriella 7" : 1
				"Gabriella 8" : 0
				"Gabriella 9" : 1
				"Gabriella 10" : 0
			d:
				"0 % 3" : 0
				"1 % 3" : 1
				"2 % 3" : 2
				"3 % 3" : 0
				"4 % 3" : 1
				"5 % 3" : 2
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Beppe:
			b: """
			# ==

			Beppe = (x) ->
			"""
			a: "Beppe = (x) -> x == 2"
			c:
				"Beppe 1" : false
				"Beppe 2" : true
				"Beppe 3" : false
				"Beppe 4" : false
			d:
				"1 == 0" : false
				"1 == 1" : true
				"1 == 2" : false
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Karolina:
			b: """
			# >

			Karolina = (x) ->
			"""
			a: "Karolina = (x) -> x > 2"
			c:
				"Karolina 1" : false
				"Karolina 2" : false
				"Karolina 3" : true
				"Karolina 4" : true
			d:
				"0 > 1" : false
				"1 > 1" : false
				"2 > 1" : true
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Kasper:
			b: """
			# >=

			Kasper = (x) ->
			"""
			a: "Kasper = (x) -> x >= 3"
			c:
				"Kasper 1" : false
				"Kasper 2" : false
				"Kasper 3" : true
				"Kasper 4" : true
			d:
				"1 >= 2" : false
				"2 >= 2" : true
				"3 >= 2" : true
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Miranda:
			b: """
			# !=

			Miranda = (x) ->
			"""
			a: "Miranda = (x) -> x != 2"
			c:
				"Miranda 1" : true
				"Miranda 2" : false
				"Miranda 3" : true
				"Miranda 4" : true
			d:
				"1 != 0" : true
				"1 != 1" : false
				"1 != 2" : true
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

#########################
	"A1: Two Parameters" :
#########################

		Operator1:
			b: """
			# + - * / % **

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a*b"
			c:
				"g 3,4" : 12
				"g 4,6" : 24
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2*2*2" : 8
				"3*3" : 9
				"2 ** 3" : 8
				"3 ** 2" : 9
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator2:
			b: """
			# + - * / %

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a+b"
			c:
				"g 3,4" : 7
				"g 4,6" : 10
				"g 4,7" : 11
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator3:
			b: """
			# + - * / %

			g = (a,b) ->
			"""
			a: "g = (a,b) -> b-a"
			c:
				"g 3,4" : 1
				"g 4,6" : 2
				"g 4,7" : 3
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator4:
			b: """
			# + - * / %

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a/b"
			c:
				"g 8,4" : 2
				"g 12,3" : 4
				"g 12,2" : 6
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator5:
			b: """
			# + - * / %

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a%b"
			c:
				"g 8,4" : 0
				"g 9,4" : 1
				"g 10,4" : 2
				"g 11,4" : 3
				"g 11,5" : 1
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator6:
			b: """
			# + - * / % ==

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a == b"
			c:
				"g 0,0" : true
				"g 1,1" : true
				"g 7,4" : false
				"g 6,4" : false
				"g 8,8" : true
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
				"2 == 3" : false
				"3 == 3" : true
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator7:
			b: """
			# + - * / % ==

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a - b == 1"
			c:
				"g 7,6" : true
				"g 5,4" : true
				"g 7,4" : false
				"g 6,4" : false
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
				"2 == 3" : false
				"3 == 3" : true
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator8:
			b: """
			# + - * / % ==

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a + b == 7"
			c:
				"g 7,0" : true
				"g 5,2" : true
				"g 7,4" : false
				"g 6,4" : false
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
				"2 == 3" : false
				"3 == 3" : true
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator9:
			b: """
			# + - * / % **

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a ** b"
			c:
				"g 3,4" : 81
				"g 4,3" : 64
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0
				"2 ** 3" : 8
				"3 ** 2" : 9
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator10:
			b: """
			# + *

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a * a + b * b"
			c:
				"g 0,1" : 1
				"g 1,2" : 5
				"g 2,3" : 13
				"g 3,4" : 25
				"g 3,5" : 34
			d:
				"3 + 2" : 5
				"3 * 2" : 6
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator11:
			b: """
			# + *

			g = (x) ->
			"""
			a: """"
g = (x) -> x + 1
"""
			c:
				"g(g(0))" : 2
				"g(g(10))" : 12
				"g(g(g(0)))" : 3
				"g g g 10" : 13
			d:
				"0 + 1 + 1" : 2
				"10 + 1 + 1" : 12
				"0 + 1 + 1 + 1" : 3
				"10 + 1 + 1 + 1" : 13
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

		Operator12:
			b: """
			# + *

			f = (x) ->
			"""
			a: """"
f = (x) -> x * 2
"""
			c:
				"f(f(0))" : 0
				"f(f(1))" : 4
				"f f f 1" : 8
			e:
				operators : "https://www.w3schools.com/jsref/jsref_operators.asp"

#########################
	'A2: range lerp for' :
#########################

		range:
			b:"""
# LOC:3 range []

# Jämförelse med for loop i Javascript:
# for (i=0;     i<stopp; i+=1)        motsvarar    range stopp
# for (i=start; i<stopp; i+=1)        motsvarar    range start,stopp
# for (i=start; i<stopp; i+=steg)     motsvarar    range start,stopp,steg
# for (i=start; i>stopp; i+=steg)     motsvarar    range start,stopp,steg  (negativt steg)

f = (stopp) -> []
g = (start,stopp) -> []
h = (start,stopp,steg) -> []
"""
			a:"""
f = (stopp)	           -> range stopp
g = (start,stopp)      -> range start,stopp
h = (start,stopp,steg) -> range start,stopp,steg
			"""
			c:
				"f 5" : [0,1,2,3,4]
				"f 6" : [0,1,2,3,4,5]
				"g 1,5" : [1,2,3,4]
				"g 2,4" : [2,3]
				"g 4,2" : []
				"g -2,0" : [-2,-1]
				"h 0,10,1" : [0,1,2,3,4,5,6,7,8,9]
				"h 9,-1,-1" : [9,8,7,6,5,4,3,2,1,0]
				"h 0,-10,-1" : [0,-1,-2,-3,-4,-5,-6,-7,-8,-9]
				"h -9,1,1" : [-9,-8,-7,-6,-5,-4,-3,-2,-1,0]
				"h 0,10,2" : [0,2,4,6,8]
			d:
				"range 3" : [0,1,2]
				"range 1,4" : [1,2,3]
				"range 1,9,2" : [1,3,5,7]
			e:
				range : "http://underscorejs.org/#range"

		"lerp":
			b:"""
# LOC:1 lerp + - * /
# Försök lösa uppgiften både med och utan lerp

f = (a,b,i) -> 0
"""
			a:"""
f = (a,b,i) -> lerp a,b,i
			"""
			c:
				"f 10,20,0" : 10
				"f 10,20,1" : 20
				"f 10,20,2" : 30
				"f 10,20,0.5" : 15
				"f 10,20,-1" : 0
			d:
				"lerp 8,12,0" : 8
				"lerp 8,12,1" : 12
				"lerp 8,12,0.5" : 10
				"lerp 8,12,-1" : 4
				"lerp 8,12,2" : 16
			e:
				lerp : "https://p5js.org/reference/#/p5/lerp"

		"for":
			b:"""
# LOC:1 for in range lerp []
# Försök lösa uppgiften både med och utan lerp

f = (a,b,n) -> []
"""
			a:"""
f = (a,b,n) -> lerp a,b,i for i in range n
			"""
			c:
				"f 0,0,5" : [0,0,0,0,0]
				"f 1,2,5" : [1,2,3,4,5]
				"f 5,4,5" : [5,4,3,2,1]
				"f -1,-2,5" : [-1,-2,-3,-4,-5]
				"f 5,25,10" : [5,25,45,65,85,105,125,145,165,185]
				"f -0.1,0.0,3" : [-0.1,0.0,0.1]
			d:
				"(i*i for i in range 5)" : [0,1,4,9,16]
			e:
				range : "http://underscorejs.org/#range"

		Roulette:
			b:"""
# LOC:13 [] .. range for in concat when == % if then else length /

L18 = []
H18 = []
ODD = []
EVEN = []
L12 = []
M12 = []
H12 = []
LCOL = []
MCOL = []
RCOL = []
RED = []
BLACK = []

profit = (numbers,winner) ->
"""
			a:"""
L18 = [1..18]
H18 = [19..36]
ODD = range 1,37,2
EVEN = range 2,37,2
RED = (i for i in [1..10].concat [19..28] when i%2==1).concat (i for i in [11..18].concat [29..36] when i%2==0)
BLACK = (i for i in [1..36] when i not in RED)
L12 = [1..12]
M12 = [13..24]
H12 = [25..36]
LCOL = range 1,37,3
MCOL = range 2,37,3
RCOL = range 3,37,3

profit = (numbers,winner) -> if winner in numbers then 36 / numbers.length else 0
"""
			c:
				"profit [1], 1" : 36
				"profit [1,2], 1": 18
				"profit [1,2,3], 1": 12
				"profit [1,2,4,5], 1": 9
				"profit [1,2,3,4,5,6], 1": 6
				"profit L12, 1": 3
				"profit LCOL, 1": 3
				"profit L18, 1": 2
				"profit RED, 1": 2
				"profit ODD, 1": 2
				"profit [1], 36" : 0
				"profit [1,2], 36": 0
				"profit [1,2,3], 36": 0
				"profit [1,2,4,5], 36": 0
				"profit [1,2,3,4,5,6], 36": 0
				"profit L12, 36": 0
				"profit LCOL, 36": 0
				"profit L18, 36": 0
				"profit BLACK, 36": 0
				"profit ODD, 36": 0
			e:
				"Roulette" : "https://qph.ec.quoracdn.net/main-qimg-0aeb011835c7633bf0961eae5c965708-c"

#########################
	"A3: [ ]" :
#########################

		Introduktion:
			b:"""
# LOC:6 length concat .. []

antal = (a) -> 0
fetch = (a,i) -> 0
konkatenera = (a,b) -> []
första = (a,n) -> []
mitti = (a,i,j) -> []
sista = (a,n) -> []
"""
			a:"""
antal = (a) -> a.length
fetch = (a,i) -> a[i]
konkatenera = (a,b) -> a.concat b
första = (a,n) -> a[..n-1]
mitti = (a,i,j) -> a[i..j]
sista = (a,n) -> a[-n..]
"""
			c:
				"antal [1,2,3]" : 3
				"antal [5,4,1,2,9,3,7]" : 7
				"fetch [4,5,6],0" : 4
				"fetch [4,5,6],2" : 6
				"konkatenera [1,2,3],[4,5,6]" : [1,2,3,4,5,6]
				"första [11,12,13,14,15],3" : [11,12,13]
				"mitti [11,12,13,14,15],1,2" : [12,13]
				"sista [11,12,13,14,15],4" : [12,13,14,15]
			d:
				"[2,11,3,56,62][0]" : 2
				"_.first [2,11,3,56,62]" : 2
				"_.last [2,11,3,56,62]" : 62
				"[2,11,3,56,62][3]" : 56
				"[2,11,3,56,62].length" : 5
				"[2,11,3,56,62][2]" : 3
				"[2,11,3,56,62][..2]" : [2,11,3]
				"[2,11,3,56,62][1..]" : [11,3,56,62]
				"[2,11,3,56,62][1..2]" : [11,3]
				"_.min [2,11,3,56,62]" : 2
				"_.max [2,11,3,56,62]" : 62
				"_.contains [2,11,3,56,62], 3" : true
				"[2,11,3,56,62].indexOf 62" : 4
				"[2,11,3,56,62].reverse()" : [62,56,3,11,2]
				"[1,2].concat [3,4]" : [1,2,3,4]
			e:
				"[ ]" : "https://www.w3schools.com/js/js_arrays.asp"

		Nim:
			b:"""
# LOC:5 < ^ sort if then else []

# NIM är ett tvåmansspel
# Tag minst en sticka ur en av tre högar
# Sista stickan vinner

nim = ([a,b,c]) -> [a,b,c]
"""
			a:"""
nim = ([a,b,c]) -> 
	if (b^c) < a then return sort [b^c,b,c]
	if (a^c) < b then return sort [a,a^c,c]
	if (a^b) < c then return sort [a,b,a^b]
	sort [a,b,c-1]
"""
			c:
				"nim [0,0,1]" : [0,0,0]
				"nim [0,0,2]" : [0,0,0]
				"nim [0,3,3]" : [0,2,3]
				"nim [1,2,3]" : [1,2,2]
				"nim [1,2,4]" : [1,2,3]
				"nim [1,3,4]" : [1,2,3]
				"nim [1,3,5]" : [1,2,3]
				"nim [2,3,5]" : [1,2,3]
				"nim [2,4,7]" : [2,4,6]
				"nim [2,5,6]" : [2,4,6]
				"nim [3,4,5]" : [1,4,5]
				"nim [3,4,6]" : [2,4,6]
				"nim [5,6,7]" : [1,6,7]
			d:
				"0^0" : 0
				"0^1" : 1
				"1^0" : 1
				"1^1" : 0
				"0^2" : 2
				"2^0" : 2
				"2^2" : 0
				"1^2" : 3
				"1^2^3" : 0
				"1^3^4" : 6
				"1^4^5" : 0
				"1^5^6" : 2
			e:
				Nim : "https://en.wikipedia.org/wiki/Nim"
				xor : "https://en.wikipedia.org/wiki/Bitwise_operation#XOR"
				Nimrod : "https://en.wikipedia.org/wiki/Nimrod_(computing)"

		Sort:
			b:"""
# LOC:16 if < then else []
# Sortera UTAN att använda loopar
# Sortera UTAN att använda någon färdig sorteringsrutin

sort2 = (a,b) -> [a,b]
sort3 = (a,b,c) -> [a,b,c]
sort4 = (a,b,c,d) -> [a,b,c,d]
sort5 = (a,b,c,d,e) -> [a,b,c,d,e]

"""
			a:"""
sort2 = (a,b) -> if a>b then [b,a] else [a,b]

sort3 = (a,b,c) ->
	[a,b] = sort2 a,b
	[b,c] = sort2 b,c
	[a,b] = sort2 a,b
	[a,b,c]

sort4 = (a,b,c,d) ->
	[a,b,c] = sort3 a,b,c
	[b,c,d] = sort3 b,c,d
	[a,b] = sort2 a,b
	[a,b,c,d]

sort5 = (a,b,c,d,e) ->
	[a,b,c,d] = sort4 a,b,c,d
	[b,c,d,e] = sort4 b,c,d,e
	[a,b] = sort2 a,b
	[a,b,c,d,e]
"""
			c:
				"sort2 11,2" : [2,11]
				"sort2 2,11" : [2,11]

				"sort3 11,4,5" : [4,5,11]
				"sort3 11,5,4" : [4,5,11]
				"sort3 4,11,5" : [4,5,11]
				"sort3 4,5,11" : [4,5,11]
				"sort3 5,11,4" : [4,5,11]
				"sort3 5,4,11" : [4,5,11]

				"sort4 11,4,5,6" : [4,5,6,11]
				"sort4 11,4,6,5" : [4,5,6,11]
				"sort4 11,5,4,6" : [4,5,6,11]
				"sort4 11,5,6,4" : [4,5,6,11]
				"sort4 11,6,4,5" : [4,5,6,11]
				"sort4 11,6,5,4" : [4,5,6,11]

				"sort4 4,11,5,6" : [4,5,6,11]
				"sort4 4,11,6,5" : [4,5,6,11]
				"sort4 4,5,11,6" : [4,5,6,11]
				"sort4 4,5,6,11" : [4,5,6,11]
				"sort4 4,6,11,5" : [4,5,6,11]
				"sort4 4,6,5,11" : [4,5,6,11]

				"sort4 5,11,4,6" : [4,5,6,11]
				"sort4 5,11,6,4" : [4,5,6,11]
				"sort4 5,4,11,6" : [4,5,6,11]
				"sort4 5,4,6,11" : [4,5,6,11]
				"sort4 5,6,11,4" : [4,5,6,11]
				"sort4 5,6,4,11" : [4,5,6,11]

				"sort4 6,11,4,5" : [4,5,6,11]
				"sort4 6,11,5,4" : [4,5,6,11]
				"sort4 6,4,11,5" : [4,5,6,11]
				"sort4 6,4,5,11" : [4,5,6,11]
				"sort4 6,5,11,4" : [4,5,6,11]
				"sort4 6,5,4,11" : [4,5,6,11]

				"sort5 5,4,11,2,1" : [1,2,4,5,11]
				"sort5 11,5,2,4,1" : [1,2,4,5,11]
				"sort5 5,2,11,4,1" : [1,2,4,5,11]
			d:
				"if 11 < 2 then [11,2] else [2,11]" : [2,11]


		Växelcykel :
			b: """
# LOC:5 [] for in push bsort - /
# Din växelcykel har stora och små kugghjul. I vilken ordning ligger växlarna?

gear = (big, small, index) -> []
"""
			a: """
gear = (big, small, index) ->
	res = []
	res.push [Math.round(b/s * 100)/100,b,s] for s in small for b in big
	bsort res
	res[index]

"""
			c:
				"gear [43,53], [13,21], 0" : [2.05,43,21]
				"gear [43,53], [13,21], 1" : [2.52,53,21]
				"gear [43,53], [13,21], 2" : [3.31,43,13]
				"gear [43,53], [13,21], 3" : [4.08,53,13]
				"gear [43,53], [13,15,17,19,21], 0" : [2.05,43,21]
				"gear [43,53], [13,15,17,19,21], 1" : [2.26,43,19]
				"gear [43,53], [13,15,17,19,21], 2" : [2.52,53,21]
				"gear [43,53], [13,15,17,19,21], 3" : [2.53,43,17]
				"gear [43,53], [13,15,17,19,21], 4" : [2.79,53,19]
				"gear [43,53], [13,15,17,19,21], 5" : [2.87,43,15]
				"gear [43,53], [13,15,17,19,21], 6" : [3.12,53,17]
				"gear [43,53], [13,15,17,19,21], 7" : [3.31,43,13]
				"gear [43,53], [13,15,17,19,21], 8" : [3.53,53,15]
				"gear [43,53], [13,15,17,19,21], 9" : [4.08,53,13]
			d:
				"Math.round 3.1415" : 3
				"Math.round(3.1415 * 10)/10" : 3.1
			e:
				"Gear ratios" : "https://cyclingtips.com/2014/08/beyond-the-big-ring-understanding-gear-ratios-and-why-they-matter/"

		SingaporeMath :
			b: """
# LOC:7 [] int if % / * in concat
# Uttryck talet n som summan av en lista med 
# tal bestående enbart av siffrorna 0 till 5
# Listan ska vara den kortast möjliga listan
# Vid lika längd: listan med flest nollor

f = (n) -> 
	[]
"""
			a: """
# rekursiv lösning:
f = (n,faktor=1) ->
	if n==0 then return []
	digit = n % 10
	n = int n / 10
	if digit==0 then return	f n, faktor*10
	if digit<=5 then return f(n, faktor*10).concat [digit*faktor]
	f(n+1, faktor*10).concat [(digit-10)*faktor]

# iterativ lösning:
# f = (n) ->
# 	res = []
# 	faktor = 1
# 	while n>0
# 		digit = n % 10
# 		n = int n / 10
# 		if digit==0 
# 		else if digit<=5 then res.unshift digit*faktor
# 		else
# 			res.unshift (digit-10)*faktor
# 			n += 1
# 		faktor *= 10
# 	res	
"""
			c:
				"f 0" : []
				"f 5" : [5]
				"f 6" : [10,-4]
				"f 9" : [10,-1]
				"f 10" : [10]
				"f 19" : [20,-1]
				"f 55" : [50,5]
				"f 56" : [100,-40,-4]
				"f 99" : [100,-1]
				"f 678" : [1000,-300,-20,-2]
				"f 1234" : [1000,200,30,4]
				"f 98765" : [100000,-1000,-200,-40,5]


#########################
	"A4: { }" :
#########################

		"Boys and Girls" :
			b : """
# LOC:7 {} [] for in length + /

girls = [{name: 'Sabrina', age: 12}, {name: 'Helene', age: 10}, {name: 'Anna', age: 11}]
boys = [{name: 'David', age: 10}, {name: 'Henry', age: 11}, {name: 'Noel', age: 14}, {name: 'Numa', age: 3}]

girl = girls[0]

names = (kids) -> []
ages = (kids) -> []
sum = (numbers) -> 0
antal = (numbers) -> 0
avg = (numbers) -> 0
"""
			a:"""
girls = [{name: 'Sabrina', age: 12}, {name: 'Helene', age: 10}, {name: 'Anna', age: 11}]
boys = [{name: 'David', age: 10}, {name: 'Henry', age: 11}, {name: 'Noel', age: 14}, {name: 'Numa', age: 3}]

names = (kids) -> kid.name for kid in kids

ages = (kids) -> kid.age for kid in kids

sum = (numbers) ->
	res = 0
	res += n for n in numbers
	res

antal = (numbers) -> numbers.length

avg = (numbers) -> sum(numbers) / antal(numbers)
"""
			c:
				"names girls" : ['Sabrina', 'Helene', 'Anna']
				"names boys" : ['David', 'Henry', 'Noel','Numa']
				"ages girls" : [12,10,11]
				"ages boys" : [10,11,14,3]
				"sum ages girls" : 33
				"sum ages boys" : 38
				"antal girls" : 3
				"antal boys" : 4
				"avg ages girls" : 11
				"avg ages boys" : 9.5
			d:
				"girl" : {name: 'Sabrina', age: 12}
				"girl['name']" : "Sabrina"
				"girl.name" : "Sabrina"
				"girl['age']" : 12
				"girl.age" : 12
				"girls.length" : 3
				"_.size girl" : 2
				"_.keys girl" : ['name','age']
				"_.values girl" : ['Sabrina',12]
				"_.pairs girl" : [['name', 'Sabrina'], ['age', 12]]
			e:
				"{ }" :"https://www.w3schools.com/js/js_objects.asp"

		Earth :
			b:"""
# LOC:7

earth =
	europe :
		sweden : 10
		denmark : 5
	asia :
		china : 1300
		india : 1500
		japan : 120

f = ->
g = ->
h = -> earth.europe.sweden
k = ->
l = ->
m = ->
n = ->
"""
			a:"""
earth =
	europe :
		sweden : 10
		denmark : 5
	asia :
		china : 1300
		india : 1500
		japan : 120

f = -> earth
g = -> earth.europe
h = -> earth.europe.sweden
k = -> earth.asia
l = -> earth.asia.china
m = -> earth.asia.india
n = -> earth.asia.japan
"""
			c:
				"f()" : {"europe":{"sweden":10,"denmark":5},"asia":{"china":1300,"india":1500,"japan":120}}
				"g()" : {"sweden":10,"denmark":5}
				"h()" : 10
				"k()" : {"china":1300,"india":1500,"japan":120}
				"l()" : 1300
				"m()" : 1500
				"n()" : 120

		Glosor :
			b:"""
# LOC:6 [] _.invert

SWE_ENG = {	bord:'table',	stol:'chair',	hund:'dog',	 katt:'cat',   selfie:'selfie', programmering:'programming' }
SWE_GER = {	bord:'Tisch',	stol:'Stuhl',	hund:'Hund', katt:'Katze', selfie:'Selfie', programmering:'Programmierung' }

swe2eng = (ord) ->
eng2swe = (ord) ->

swe2ger = (ord) ->
ger2swe = (ord) ->

eng2ger = (ord) ->
ger2eng = (ord) ->
"""
			a:"""
swe2eng = (ord) -> SWE_ENG[ord]
eng2swe = (ord) -> _.invert(SWE_ENG)[ord]

swe2ger = (ord) -> SWE_GER[ord]
ger2swe = (ord) -> _.invert(SWE_GER)[ord]

eng2ger = (ord) -> swe2ger eng2swe ord
ger2eng = (ord) -> swe2eng ger2swe ord

			"""
			c:
				"swe2eng 'bord'" : 'table'
				"eng2swe 'dog'" : 'hund'
				"swe2ger 'programmering'" : 'Programmierung'
				"ger2swe 'Selfie'" : 'selfie'
				"eng2ger 'cat'" : 'Katze'
				"ger2eng 'Stuhl'" : 'chair'

			d:
				"SWE_ENG['bord']" : "table"
				"_.invert {a:1, b:2}" : {"1":"a","2":"b"}

			e:
				"_.invert" : "http://underscorejs.org/#invert"

		"Glosor[]" :
			b:"""
# LOC:6 .indexOf []

SWE = [	'bord',	 'stol',  'hund', 'katt',  'selfie', 'programmering'  ]
ENG = [	'table', 'chair', 'dog',	'cat',   'selfie', 'programming'    ]
GER = [	'Tisch', 'Stuhl', 'Hund', 'Katze', 'Selfie', 'Programmierung' ]

swe2eng = (ord) ->
eng2swe = (ord) ->

swe2ger = (ord) ->
ger2swe = (ord) ->

eng2ger = (ord) ->
ger2eng = (ord) ->
"""
			a:"""
swe2eng = (ord) -> ENG[SWE.indexOf(ord)]
eng2swe = (ord) -> SWE[ENG.indexOf(ord)]

swe2ger = (ord) -> GER[SWE.indexOf(ord)]
ger2swe = (ord) -> SWE[GER.indexOf(ord)]

eng2ger = (ord) -> GER[ENG.indexOf(ord)]
ger2eng = (ord) -> ENG[GER.indexOf(ord)]

			"""
			c:
				"swe2eng 'bord'" : 'table'
				"eng2swe 'dog'" : 'hund'
				"swe2ger 'programmering'" : 'Programmierung'
				"ger2swe 'Selfie'" : 'selfie'
				"eng2ger 'cat'" : 'Katze'
				"ger2eng 'Stuhl'" : 'chair'

			d:
				"SWE.indexOf 'katt'" : 3
				"ENG[3]" : "cat"
				"GER[3]" : "Katze"
			e:
				indexOf : "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf"

#########################
	'A5: " "' :
#########################

		Introduktion:
			b:"""
# LOC:8 length [] .. + "" indexOf split join for in

antal = (s) -> 0
tecken = (s,i) -> ""
mitti = (s,i,j) -> ""
konkatenera = (s,t) -> ""
leta = (s,t) -> 0
splittra = (s,avgr) -> []
hopslagning = (a,avgr='') -> ""
dubbla = (s) -> ""
			"""
			a:"""
antal = (s) -> s.length
tecken = (s,i) -> s[i]
mitti = (s,i,j) -> s[i..j]
konkatenera = (s,t) -> s + t
leta = (s,t) -> s.indexOf t
splittra = (s,avgr) -> s.split avgr
hopslagning = (a,avgr='') -> a.join(avgr)
dubbla = (s) -> hopslagning (tecken + tecken for tecken in s)
			"""
			c:
				'antal "Coffee"' : 6
				'tecken "Coffee",1' : 'o'
				'mitti "Coffee",1,3' : 'off'
				'mitti "Coffee",3,5' : 'fee'
				'konkatenera "Coffee","script"' : 'Coffeescript'
				'leta "Coffee","e"' : 4
				'leta "Coffee","x"' : -1
				"splittra '2 3 +',' '" : ['2', '3', '+']
				"hopslagning ['2', '3', '+'], '|'" : "2|3|+"
				'dubbla "script"' : 'ssccrriipptt'
			d:
				'"Javascript".length' : 10
				'"Javascript".indexOf "a"' : 1
				'"1,2,3".split ","' : ["1","2","3"]
				'["1","2","3"].join " "' : "1 2 3"
			e:
				'" "' : "https://www.w3schools.com/jsref/jsref_obj_string.asp"
				split: "http://coffeescript-cookbook.github.io/chapters/strings/splitting-a-string"
				join : "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join"
				indexOf : "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf"

		Palindrom :
			b : """
			# LOC:1 join reverse split ""
			# Ett palindrom blir samma ord om man vänder på det.
			# Ordet palindrom är inte ett palindrom.

			palindrom = (word) -> null
			"""
			a: """
palindrom = (word) -> word.split("").reverse().join("") == word
"""
			c:
				"palindrom 'badrum'" : false
				"palindrom 'kök'" : true
				"palindrom 'kajak'" : true
				"palindrom 'kanot'" : false
			e:
				reverse : "http://coffeescript-cookbook.github.io/chapters/arrays/reversing-arrays"

		Rövarspråk :
			b: """
			# LOC:1 for in if then else + join '' ()

			rs = (word,extra='o') -> ""
			"""
			a: """
rs = (word,extra='o') -> ((if letter in 'aeiouy åäö' then letter else letter + extra + letter) for letter in word).join("")
"""
			c:
				"rs 'kalas fint'" : 'kokalolasos fofinontot'
				"rs 'bokstav'" : 'bobokoksostotavov'
				"rs 'kalas fint','i'" : 'kikalilasis fifinintit'
				"rs 'bokstav','e'" : 'bebokeksestetavev'
				"rs 'kalas fint','a'" : 'kakalalasas fafinantat'

		Advanced :
			b: """
# LOC:8 _.some _.filter _.countBy length split reverse join == and for in continue

existerar = (word) ->
palindromer = (n) -> []
frekvens = () ->  {}
korsord = (pattern) -> []

words = ordlista.split " "
"""
			a:"""
existerar = (word) -> _.some words, (w) -> w==word
palindromer = (n) -> _.filter words, (w) -> w.length == n and w == w.split('').reverse().join('')
frekvens = () ->  _.countBy words, "length"
match = (word,pattern) ->
	for letter,i in pattern
		if letter != '.' and letter != word[i] then	return false
	true
korsord = (pattern) -> _.filter words, (w) -> w.length == pattern.length and match w,pattern

words = ordlista.split " "
"""
			c:
				"existerar 'ajabaja'" : true
				"existerar 'selfie'" : false
				"palindromer 4" : ["alla","amma","arra","esse"]
				"palindromer 6" : ["tillit"]
				"palindromer 7" : ["ajabaja","tätatät"]
				"frekvens()" : {"4":2573,"5":4568,"6":6769,"7":10181,"8":13578,"9":14600}
				"korsord 'b..l'" : ["ball", "bill", "boll", "bröl"]
			d:
				"words.length" : 52269
				"_.first words" : "abakus"
				"_.last words" : "övärld"
			e:
				'_.some' : "http://underscorejs.org/#some"
				'_.filter' : "http://underscorejs.org/#filter"
				'_.countBy' : "http://underscorejs.org/#countBy"

#########################
	"A6: Interpolation" :
#########################

		linearequation1:
			b: """
			# LOC:1 *

			f = (x) -> 0
			"""
			a: "f = (x) -> 2 * x"
			c:
				"f 2" : 4
				"f 3" : 6
			e:
				"Linjär interpolation" : "https://en.wikipedia.org/wiki/Linear_interpolation"

		linearequation2:
			b: """
			# LOC:1 * +

			f = (x) -> 0
			"""
			a: "f = (x) -> 3 + 2 * x"
			c:
				"f 2" : 7
				"f 3" : 9
			e:
				"Linjär interpolation" : "https://en.wikipedia.org/wiki/Linear_interpolation"

		lerp:
			b: """
			# LOC:1 * + -

			lerp = (y1,y2,x) -> 0
			"""
			a: "lerp = (y1,y2,x) -> y1 + (y2-y1) * x"
			c:
				"lerp 10,16,-1" : 4
				"lerp 10,16,0" : 10
				"lerp 10,16,0.5" : 13
				"lerp 10,16,1" : 16
				"lerp 10,16,2" : 22
			e:
				"Linjär interpolation" : "https://en.wikipedia.org/wiki/Linear_interpolation"
				lerp : "https://p5js.org/reference/#/p5/lerp"

		map:
			b: """
			# LOC:1 * + - /

			map = (x,x1,x2,y1,y2) -> 0
			"""
			a: "map = (x,x1,x2,y1,y2) -> y1 + (y2-y1) * (x-x1)/(x2-x1)"
			c:
				"map 0,1,3,20,40" : 10
				"map 1,1,3,20,40" : 20
				"map 2,1,3,20,40" : 30
				"map 3,1,3,20,40" : 40
				"map 75,50,100,0,1" : 0.5
				"map 16,0,40,0,200" : 80
			e:
				map : "https://p5js.org/reference/#/p5/map"

		CelsiusFahrenheit:
			b: """
			# LOC:4 * + - / map

c2f_map  = (c) -> map c,0,1,2,3
f2c_map  = (f) -> map f,0,1,2,3
c2f      = (c) -> 0 + 1 * c
f2c      = (f) -> 0 + 1 * f
"""
			a: """
c2f_map = (c) -> map c,0,100,32,212
f2c_map = (f) -> map f,32,212,0,100
c2f = (c) -> 32 + 1.8 * c
f2c = (f) -> (f-32) / 1.8
"""
			c:
				"c2f_map 0" : 32
				"c2f_map 100" : 212
				"f2c_map 32" : 0 
				"f2c_map 212" : 100
				"c2f 0" : 32
				"c2f 100" : 212
				"f2c 32" : 0
				"f2c 212" : 100
			e:
				Calculator : "http://www.rapidtables.com/convert/temperature/fahrenheit-to-celsius.htm"

		Hour2Degree:
			b: """
			# LOC:1 map + - * / %

			h2d = (x) -> 0
			"""
			a: "h2d = (x) -> map(15-x,0,12,0,360) % 360"
			c:
				"h2d 0" : 90
				"h2d 1" : 60
				"h2d 2" : 30
				"h2d 3" : 0
				"h2d 4" : 330
				"h2d 5" : 300
				"h2d 6" : 270
				"h2d 7" : 240
				"h2d 8" : 210
				"h2d 9" : 180
				"h2d 10" : 150
				"h2d 11" : 120
				"h2d 12" : 90

		Hour2Radian:
			b: """
			# LOC:1 map + - * / % Math.PI

			h2r = (x) -> 0
			"""
			a:"""
			h2r = (x) -> (map x,15,3,0,2*Math.PI) % (2*Math.PI)
			"""
			c:
				"h2r 0" : 3*Math.PI/6
				#"h2r 1" : 2*Math.PI/6  decimal problem
				#"h2r 2" : 1*Math.PI/6  decimal problem
				"h2r 3" : 0*Math.PI/6
				"h2r 4" : 11*Math.PI/6
				"h2r 5" : 10*Math.PI/6
				"h2r 6" : 9*Math.PI/6
				"h2r 7" : 8*Math.PI/6
				#"h2r 8" : 7*Math.PI/6  decimal problem
				"h2r 9" : 6*Math.PI/6
				"h2r 10" : 5*Math.PI/6
				"h2r 11" : 4*Math.PI/6
				"h2r 12" : 3*Math.PI/6
			e:
				Math : "https://www.w3schools.com/jsref/jsref_obj_math.asp"

		AngleConversions:
			b: """
			# LOC:6 map

k2t = (k) -> -1
t2k = (t) -> -1

k2g = (k) -> -1
g2k = (g) -> -1

t2g = (t) -> -1
g2t = (g) -> -1
			"""
			a:"""
k2t = (k) -> map k, 0,360, 0,12
t2k = (t) -> map t, 0,12,  0,360

k2g = (k) -> map k,90,0, 0,90
g2k = (g) -> map g,90,0, 0,90

t2g = (t) -> map t,3,0, 0,90
g2t = (g) -> map g,0,90, 3,0
				"""
			c:
				"k2t 0" : 0
				"k2t 180" : 6
				"t2k 0"  : 0
				"t2k 6" : 180

				"k2g 90"  : 0
				"k2g 0" : 90
				"g2k 90" : 0
				"g2k 0" : 90

				"t2g 3"  : 0
				"t2g 0" : 90
				"g2t 0"  : 3
				"g2t 90" : 0

		'AverageTime':
			b: """
			# LOC:14 "" [] parseInt if * + / % split

			avg = (t1,t2) -> "00:00"
			"""
			a: """
checkTime = (i) -> if i < 10 then "0" + i else i
avg = (t1,t2) -> 
	arr1 = t1.split ':'
	h1 = parseInt arr1[0]
	m1 = parseInt arr1[1]
	arr2 = t2.split ':'
	h2 = parseInt arr2[0]
	m2 = parseInt arr2[1]
	i1 = 60*h1+m1
	i2 = 60*h2+m2
	i = int (i1+i2)/2
	h = int i/60
	m = i % 60
	checkTime(h) + ':' + checkTime(m)
			"""
			c:
				'avg "07:00", "15:00"' : "11:00"
				'avg "07:00", "14:00"' : "10:30"
				'avg "07:16", "15:14"' : "11:15"
				'avg "07:16", "10:56"' : "09:06"

#########################
	"A7: class" :
#########################

		Kid :
			b : """
# LOC:8 class constructor new @ [] for in length + /
# Innan du löser denna uppgift: Be att få se Bouncing Balls!
# LOC betyder Lines Of Code, dvs antal kodrader.
# Åtta kodrader är lagom för detta problem.
# Färre innebär sämre läsbarhet.
# Har du fler bör du fundera på en kortare lösning.

class Kid
	constructor : (name,age) ->

girls = [new Kid('Sabrina',12), new Kid('Helene',10), new Kid('Anna',11)]
boys = [new Kid('David',10), new Kid('Henry',11), new Kid('Noel',14), new Kid('Numa',3)]

names = (kids) -> []
ages = (kids) -> []
sum = (numbers) -> 0
antal = (numbers) -> 0
average = (numbers) -> 0

"""
			a: """

class Kid
	constructor : (@name,@age) ->

girls = [new Kid('Sabrina',12), new Kid('Helene',10), new Kid('Anna',11)]
boys = [new Kid('David',10), new Kid('Henry',11), new Kid('Noel',14), new Kid('Numa',3)]

names = (kids) -> kid.name for kid in kids

ages = (kids) -> kid.age for kid in kids

sum = (numbers) ->
	res = 0
	res += n for n in numbers
	res

antal = (numbers) -> numbers.length

average = (numbers) -> sum(numbers) / antal(numbers)
"""

			c:
				"names girls" : ['Sabrina', 'Helene', 'Anna']
				"names boys" : ['David', 'Henry', 'Noel','Numa']
				"ages girls" : [12,10,11]
				"ages boys" : [10,11,14,3]
				"sum ages girls" : 33
				"sum ages boys" : 38
				"antal girls" : 3
				"antal boys" : 4
				"average ages girls" : 11
				"average ages boys" : 9.5
			e:
				classes : "http://blog.teamtreehouse.com/the-absolute-beginners-guide-to-coffeescript"


		Geometri :
			b:"""
# LOC:24 class constructor new @ Math.PI * + / - Math.sqrt Math.atan2

class Kvadrat
	constructor : (@sida) ->
	area : -> 0
	omkrets : -> 0

class Cirkel
	constructor : (radie) ->
	area : ->
	omkrets : ->

class Rektangel
	constructor : () ->
	area : ->
	omkrets : ->

class Triangel
	area : ->
	omkrets : -> 0

class Kub
	area : ->
	volym : ->

class Linje
	distans : ->
	riktning : ->

			"""
			a:"""
class Kvadrat
	constructor : (@sida) ->
	area : -> @sida * @sida
	omkrets : -> 4 * @sida

class Cirkel
	constructor : (@radie) ->
	area : -> Math.PI * @radie * @radie
	omkrets : -> 2 * @radie * Math.PI

class Rektangel
	constructor : (@a,@b) ->
	area : -> @a * @b
	omkrets : -> 2 * (@a+@b)

class Triangel
	constructor : (@a,@b) ->
	area : -> @a * @b / 2
	omkrets : -> @a + @b + Math.sqrt @a*@a+@b*@b

class Kub
	constructor : (@sida) ->
	area : -> 6 * @sida * @sida
	volym : -> @sida * @sida * @sida

class Linje
	constructor : (@x1,@y1,@x2,@y2) -> [@dx, @dy] = [@x2-@x1, @y2-@y1]
	distans : -> Math.sqrt @dx*@dx + @dy*@dy
	riktning : -> 180 / Math.PI * Math.atan2 @dy,@dx
"""
			c:
				"(new Kvadrat 5).area()" : 25
				"(new Kvadrat 6).omkrets()" : 24
				"(new Cirkel 3).area()" : 3*3*Math.PI
				"(new Cirkel 4).omkrets()" : 2*4*Math.PI
				"(new Rektangel 4,5).area()" : 20
				"(new Rektangel 4,5).omkrets()" : 18
				"(new Triangel 4,5).area()" : 10
				"(new Triangel 4,5).omkrets()" : 4+5+Math.sqrt 4*4+5*5
				"(new Kub 4).area()" : 6 * 4 * 4
				"(new Kub 4).volym()" : 4 * 4 * 4
				"(new Linje 0,0, 4,3).distans()" : 5
				"(new Linje 0,0, 4,3).riktning()" : 36.86989764584402





		Kalkylator :
			b: """
# LOC:11 class constructor new @ for in split == push pop if then else parseInt [] ""
# Med Reverse Polish Notation behövs inga parenteser.
# (2 + 3) * 4 utförs som 2 3 + 4 *

class RPN
	calculate : (command) -> []

rpn = new RPN
"""
			a: """

class RPN
	calculate : (command) ->
		@stack = []
		@calc command
		@stack

	calc : (command) ->
		for cmd in command.split ' '
			if cmd == '+' then @stack.push @stack.pop() + @stack.pop()
			else if cmd == '*' then @stack.push @stack.pop() * @stack.pop()
			else if cmd == '/' then @stack.push 1 / @stack.pop() * @stack.pop()
			else @stack.push parseInt cmd
"""
			c:
				"rpn.calculate '2'" : [2]
				"rpn.calculate '2 3'" : [2,3]
				"rpn.calculate '2 3 +'" : [5]
				"rpn.calculate '2 3 *'" : [6]
				"rpn.calculate '2 3 4 * +'" : [14]
				"rpn.calculate '3 4 /'" : [0.75]

			d:
				"'a b c'.split ' '" : ['a','b','c']
				'1 + 2' : 3
				"'1' + '2'" : '12'
				"1 + '2'" : '12'
				"'1' + 2" : '12'
				"parseInt '3'" : 3
				"parseFloat '3.14'" : 3.14
			e:
				parseInt : "https://www.w3schools.com/jsref/jsref_parseint.asp"
				stack : "https://sv.wikipedia.org/wiki/Stack_(datastruktur)"
				split : "https://coffeescript-cookbook.github.io/chapters/strings/splitting-a-string"
				"Omvänd Polsk Notation" : "https://sv.wikipedia.org/wiki/Omv%C3%A4nd_polsk_notation"

		Resistanskalkylator :
			b: """
# LOC:22 class constructor new @ for in split == push pop if then else parseInt [] ""
# Exempel 1 kan lösas med: '2 2 s 4 p 10 s 4 8 s p 4 s'
# Klarar du att lösa exempel 2?
# OBS: Detta är fysik på gymnasienivå.

serial = (a,b) -> 0
parallel = (a,b) -> 0

class RPN
	constructor : () ->
	calculate : (command) -> []

rpn = new RPN
"""
			a: """
serial = (a,b) -> a + b
parallel = (a,b) -> 1/(1/a + 1/b)

class RPN
	constructor : () ->

	calculate : (command) ->
		@stack = []
		@calc command
		@stack

	calc : (command) ->
		for cmd in command.split ' '
			if cmd == '+' then @stack.push @stack.pop() + @stack.pop()
			else if cmd == '*' then @stack.push @stack.pop() * @stack.pop()
			else if cmd == '/' then @stack.push 1 / @stack.pop() * @stack.pop()
			else if cmd == 'inv' then @calc "1 swap /"
			else if cmd == 'swap'
				a = @stack.pop()
				b = @stack.pop()
				@stack.push a
				@stack.push b
			else if cmd == 's' then @calc '+'
			else if cmd == 'p' then @calc 'inv swap inv + inv'
			else @stack.push parseInt cmd
"""
			c:
				"serial 100,150" : 250
				"parallel 100,150" : 60
				"parallel serial(100,150),100" : 25000/350
				"serial parallel(100,150),100" : 160
				"serial serial(100,150),200" : 450
				"parallel parallel(100,150),200" : 100*150*200/(100*150 + 150*200 + 100*200)
				"rpn.calculate '4 inv'" : [0.25]
				"rpn.calculate '3 4 swap'" : [4,3]
				"rpn.calculate '100 150 s'" : [250]
				"rpn.calculate '100 150 p'" : [60]
				"rpn.calculate '100 150 s 100 p'" : [25000/350]
				"rpn.calculate '100 150 p 100 s'" : [160]
				"rpn.calculate '100 150 s 200 s'" : [100+150+200]
				"rpn.calculate '100 150 p 200 p'" : [100*150*200/(100*150 + 150*200 + 100*200)]
				"rpn.calculate '2 2 s 4 p 10 s 4 8 s p 4 s'" : [10]
				"rpn.calculate '4 4 8 s 10 4 2 2 s p s p s'" : [10]

			d:
				"100 + 150" : 250
				"100*150 / (100+150)" : 60
				"1 / (1/100 + 1/150)" : 60
				"100*150*200 / (100*150 + 100*200 + 150*200)" : (100*150*200)/(100*150 + 150*200 + 100*200)
				"1 / (1/100 + 1/150 + 1/200)" : 100*150*200/(100*150 + 150*200 + 100*200)
			e:
				Resistans : "http://montessorimuddle.org/wp-content/uploads/2012/01/circuits-resistance-current1.png"
				"Exempel 1" : "http://www.electronicshub.org/resistors-in-series-and-parallel-combinations#Resistors_in_series_and_parallel_Example"
				"Exempel 2" : "http://www.electronicshub.org/resistors-in-series-and-parallel-combinations#Resistor_Network"

		Bråktal :
			b:"""
# LOC:8 class constructor new @ if then else * + - / % ==

gcd = (a,b) -> 1

class Fraction
	constructor : (a,b) ->
	to_s : -> "1/1"
	add : (o) -> new Fraction 1,1
	sub : (o) -> new Fraction 1,1
	mul : (o) -> new Fraction 1,1
	div : (o) -> new Fraction 1,1
"""
			a:"""
gcd = (a,b) -> if b == 0 then a else gcd b, a % b

class Fraction
	constructor : (@a,@b) -> [@a,@b] = [@a/gcd(@a,@b), @b/gcd(@a,@b)]
	to_s : -> @a + "/" + @b
	add : (o) -> new Fraction @a*o.b+@b*o.a, @b*o.b
	sub : (o) -> new Fraction @a*o.b-@b*o.a, @b*o.b
	mul : (o) -> new Fraction @a*o.a, @b*o.b
	div : (o) -> new Fraction @a*o.b, @b*o.a
"""
			c:
				"gcd 2,4" : 2
				"gcd 15,25" : 5
				"(new Fraction 2,4).to_s()" : "1/2"
				"(new Fraction 3,8).to_s()" : "3/8"
				"(new Fraction 1,2).add(new Fraction 1,3).to_s()" : "5/6"
				"(new Fraction 1,2).sub(new Fraction 1,3).to_s()" : "1/6"
				"(new Fraction 4,6).mul(new Fraction 1,3).to_s()" : "2/9"
				"(new Fraction 4,6).div(new Fraction 2,1).to_s()" : "1/3"
			e:
				Bråktal : "http://www.matteboken.se/lektioner/skolar-7/brak-och-procent/braktal"

		Simplex :
			b:"""
# LOC:14 class constructor new [] @	+ - *
# Tips: Spela p5Complex innan du påbörjar denna övning.

class Simplex
	constructor : (x,y) ->
	translate : -> @
	scale : -> @
	rotate : -> @
	mirror : -> @

a = new Simplex 1,3
b = new Simplex -2,4
"""
			a:"""
class Simplex
	constructor : (@x,@y) ->
	translate : ->
		@x += 1
		@
	scale : ->
		[@x,@y] = [2*@x,2*@y]
		@
	rotate : ->
		[@x,@y] = [-@y,@x]
		@
	mirror : ->
		[@x,@y] = [@y,@x]
		@
"""
			c:
				"pp a" : "{x:1,y:3}"
				"pp a.translate()" : "{x:2,y:3}"
				"pp a.scale()" : "{x:2,y:6}"
				"pp a.rotate()" : "{x:-3,y:1}"
				"pp a.mirror()" : "{x:3,y:1}"
				"pp a.translate().scale()" : "{x:4,y:6}"
				"pp a.scale().translate()" : "{x:3,y:6}"
				"pp b" : "{x:-2,y:4}"
				"pp b.translate()" : "{x:-1,y:4}"
				"pp b.scale()" : "{x:-4,y:8}"
				"pp b.rotate()" : "{x:-4,y:-2}"
				"pp b.mirror()" : "{x:4,y:-2}"
				"pp b.translate().scale()" : "{x:-2,y:8}"
				"pp b.scale().translate()" : "{x:-3,y:8}"
				"pp b.mirror().mirror()" : "{x:-2,y:4}"
				"pp b.rotate().rotate().rotate().rotate()" : "{x:-2,y:4}"
			e:
				p5Complex : "https://christernilsson.github.io/p5Complex/www"

		Bignum :
			b:"""
# LOC:22 class constructor new @ parseInt reverse length push floor slice unshift join for if
# Med Bignum kan man räkna exakt med tal med tusentals siffor.
# Du programmerar på samma sätt som om du räknar med papper och penna.
# Multiplikationen använder sig av additionen samt inskiftande av noll för varje siffra.

class Bignum
	constructor : (s) -> @list=[]
	to_s : () -> ""
	add : (other) -> @
	mul : (other) -> @

a = new Bignum "123"
b = new Bignum "8"
c = new Bignum "999"
d = new Bignum "456"
e = new Bignum "12345678901234567890"
f = new Bignum "1"
g = new Bignum "1"
h = new Bignum "2"

g = g.add g for i in range 100
h = h.mul h for i in range 7
"""
			a:"""

# observera att reverse() vänder PÅ plats.
# clona därför med slice() i t ex to_s
#reversera = (arr) -> arr.slice().reverse()

class Bignum
	constructor : (s) ->
		@list = (parseInt(ch) for ch in s)
		@list.reverse()

	to_s : () -> @list.slice().reverse().join("")

	add : (other) ->
		if @list.length < other.list.length then return other.add @
		carry = 0
		res = new Bignum ""
		for d1, pos in @list
			d = d1 + (other.list[pos] || 0) + carry
			res.list.push d % 10
			carry = Math.floor d / 10
		if carry then res.list.push 1
		res

	mul : (other) ->
		res = new Bignum ""
		for digit,d in other.list.slice().reverse()
			for i in range digit
				res = res.add @
			if d < other.list.length-1 then res.list.unshift 0
		res

a = new Bignum "123"
b = new Bignum "8"
c = new Bignum "999"
d = new Bignum "456"
e = new Bignum "12345678901234567890"
f = new Bignum "1"
g = new Bignum "1"
h = new Bignum "2"

g = g.add g for i in range 100
h = h.mul h for i in range 7

"""
			c:
				"a.list" : [3,2,1]
				"a.to_s()" : "123"
				"a.add(b).to_s()" : "131"
				"b.add(a).to_s()" : "131"
				"a.add(c).to_s()" : "1122"
				"a.add(b).add(c).to_s()" : "1130"
				"e.add(f).to_s()" : "12345678901234567891"
				"g.to_s()" : "1267650600228229401496703205376"
				"a.mul(b).to_s()" :"984"
				"a.mul(c).to_s()" : "122877"
				"a.mul(d).to_s()" : "56088"
				"h.to_s()" :"340282366920938463463374607431768211456"
			d:
				"parseInt '1'" : 1
				"[1,2,3].reverse()" : [3,2,1]
				"[1,2,3].length" : 3
				"Math.floor 3.14" : 3
				"[11,22,33].slice 1" : [22,33]
				"[11,22,33].slice 1,2" : [22]
				"[11,22,33].slice()" : [11,22,33]
				"12345678901234567890 + 1" : 12345678901234567000
			e:
				Bignum : "https://sv.wikipedia.org/wiki/Bignum-aritmetik"
				unshift : "https://www.w3schools.com/jsref/jsref_unshift.asp"
				shift : "https://www.w3schools.com/jsref/jsref_shift.asp"
				push : "https://www.w3schools.com/jsref/jsref_push.asp"
				pop : "https://www.w3schools.com/jsref/jsref_pop.asp"


		Complex:
			b: """
# LOC:31 class constructor new @ -> if + * == > <
# Börja med att få bort onödiga nollor och ettor i to_s!

class Complex
	constructor : (@x,@y) ->
	to_s : -> @x + " " + @y + "i"
	add : (other) -> @
	mul : (other) -> @
"""
			a: """
class Complex
	constructor : (@x,@y) ->
	add : (other) ->
		new Complex @x+other.x, @y+other.y
	mul : (other) ->
		a = @x
		b = @y
		c = other.x
		d = other.y
		new Complex a*c-b*d, b*c+a*d
	to_s : ->
		sx = "" if @x == 0
		sx = @x if @x > 0
		sx = @x if @x < 0

		sy = "" if @y == 0
		sy = "-i" if @y == -1
		sy = "i" if @y == 1
		sy = @y+"i" if @y > 1
		sy = @y+"i" if @y < -1

		if sx!="" and sy!=""
			if @y < 0
				s = sx+sy
			else if @y==0
				s = sx
			else
				s = sx + "+" + sy
		else if @x==0 and @y==0
			s = "0"
		else
			s = sx + sy
		s
						"""
			c:
				"new Complex(-1,0).to_s()" :"-1"
				"new Complex(-1,-1).to_s()" : "-1-i"
				"new Complex(0,-1).to_s()" : "-i"
				"new Complex(0,0).to_s()" : "0"
				"new Complex(0,1).to_s()" : "i"
				"new Complex(1,-2).to_s()" : "1-2i"
				"new Complex(1,-1).to_s()" : "1-i"
				"new Complex(1,0).to_s()" : "1"
				"new Complex(1,1).to_s()" : "1+i"
				"new Complex(1,2).to_s()" : "1+2i"
				"new Complex(1,2).add(new Complex(1,-1)).to_s()" : "2+i"
				"new Complex(1,2).mul(new Complex(1,-1)).to_s()" : "3+i"
			e:
				"Komplexa tal" : "https://sv.wikipedia.org/wiki/Komplexa_tal"

		Polynom :
			b: """
# LOC:52 class constructor new [] @ or for in range length ** push reverse join #{}
# Uppgiften innehåller matematik på gymnasienivå.

class Polynom
	constructor : (lst) -> @lst=[]
	to_s : -> ""
	add : (other) -> @
	mul : (other) -> @
	power : (n) -> @
	value : (x) -> 0
	diff : -> @
	integ : -> @
	compose : (other)	-> @

"""
			a: """
class Polynom
	constructor : (@lst) ->

	add : (other) ->
		h = []
		h[i] = (h[i] or 0) + value for value,i in @lst
		h[i] = (h[i] or 0) + value for value,i in other.lst
		new Polynom h

	mul : (other) ->
		h = (0 for i in range @lst.length + other.lst.length - 1)
		for value1,i1 in @lst
			for value2,i2 in other.lst
				i = i1+i2
				h[i] = (h[i] or 0) + value1 * value2
		new Polynom h

	power : (n) ->
		res = new Polynom [1]
		res = res.mul @ for i in range n
		res

	compose : (other)	->
		res = new Polynom []
		for value,i in @lst
			res = res.add (new Polynom [value]).mul other.power i
		res

	value : (x) ->
		res = 0
		res += value * x ** i for value,i in @lst
		res

	diff : ->
		lst = []
		for value,i in @lst
			if i != 0 then lst[i-1] = i*value
		new Polynom lst

	integ : ->
		lst = [0]
		for value,i in @lst
			i += 1
			lst[i] = value/i
		new Polynom lst

	to_s : ->
		arr = []
		for item,i in @lst
			if item == 0 then continue
			if item == 1
				if i==0 then arr.push "1"
				else if i==1 then arr.push "x"
				else arr.push "x^" + i
			else
				if i==0 then arr.push item
				else if i==1 then arr.push item + "*x"
				else arr.push item + "*x^" + i
		arr.reverse()
		arr.join "+"
"""
			c:
				"(new Polynom [5,4,3]).lst" : [5,4,3]
				"(new Polynom [4,3]).lst" : [4,3]
				"(new Polynom [5,4,3]).to_s()" : "3*x^2+4*x+5"
				"(new Polynom [0,0,1]).to_s()" : "x^2"
				"(new Polynom [5,4,3]).add(new Polynom [4,3]).to_s()" : "3*x^2+7*x+9"
				"(new Polynom [5,4,3]).mul(new Polynom [4,3]).to_s()" : "9*x^3+24*x^2+31*x+20"
				"(new Polynom [5,4,3]).value(2)" : 25
				"(new Polynom [5,4,3]).power(2).lst" : [25,40,46,24,9]
				"(new Polynom [4,3]).power(3).lst" : [64,144,108,27]
				"(new Polynom [5,4,3]).diff().lst" : [4,6]
				"(new Polynom [5,4,3]).integ().lst" : [0,5,2,1]
				"(new Polynom [0,0,1]).integ().to_s()" : "0.3333333333333333*x^3"
				"(new Polynom [0,0,1]).integ().value(3)" : 9
				"(new Polynom [3,2]).compose(new Polynom [3,2]).lst" : [9,4]
				"(new Polynom [3,2]).compose(new Polynom [5,0,-1]).lst" : [13,0,-2]
				"(new Polynom [5,0,-1]).compose(new Polynom [3,2]).lst" : [-4,-12,-4]
				"(new Polynom [5,0,-1]).compose(new Polynom [5,0,-1]).lst" : [-20,0,10,0,-1]
			e:
				Polynom : "http://www.matteboken.se/lektioner/matte-2/algebra/polynom"
				Polynomfunktioner : "http://www.matteboken.se/lektioner/matte-3/polynom-och-ekvationer/polynomfunktioner"
				"Multiplikation" : "http://www.matteboken.se/lektioner/matte-3/polynom-och-ekvationer/multiplikation-av-polynom"
				"Polynom, wikipedia" : "https://sv.wikipedia.org/wiki/Polynom"

		Compressor :
			b:"""
# LOC:9 class constructor new @ for in if then else != break push split join "" []

class Compressor
	constructor : (ordlista) ->
	to_s : -> ""

c5 = new Compressor "abakus abandon abbedissa abborre abbot babbel"
compressor = new Compressor ordlista
"""
			a:"""
class Compressor
	constructor : (ordlista, @last="", @compressed=[]) ->
		words = ordlista.split " "
		for word in words
			for ch,i in word
				if ch != @last[i] then break
			@last = word
			@compressed.push i + word[i..]
	to_s : -> @compressed.join ""
"""
			c:
				"c5.to_s()" : "0abakus3ndon2bedissa3orre4t0babbel"
				"ordlista.length" : 437305
				"compressor.to_s().length" : 212097

		Nian :
			b:"""
# LOC:20 class constructor new @ split for in of reduce ** & and push "" indexOf > if then _.countBy
# Bilda ord med fyra till nio bokstäver. Den mittersta bokstaven måste ingå.

class Nian
	constructor : (lista=words) ->
	bits : (word) -> 0
	solve : (letters) -> []

words = ordlista.split " "
nian = new Nian
			"""
			a:"""

class Nian
	constructor : (@words=words) ->
		@patterns = (@bits word for word in @words)

	bits : (word) -> word.split("").reduce ((acc,ch) -> acc|(2 ** "abcdefghijklmnopqrstuvwxyzåäö".indexOf ch)), 0
	ok : (f1,f2) ->
		for ch, f of f2
			if f > f1[ch] then return false
		true

	solve : (letters) ->
		mandatory = letters[4]
		res = []
		p = @bits letters
		letters1 = letters.split ""
		freq1 = _.countBy letters1
		for pattern,i in @patterns
			if (p & pattern) == pattern
				letters2 = @words[i].split ""
				freq2 = _.countBy letters2
				if @ok(freq1,freq2) and mandatory in letters2 then res.push @words[i]
		res
"""
			c:
				"nian.bits 'a'" : 1
				"nian.bits 'b'" : 2
				"nian.bits 'c'" : 4
				"nian.bits 'abba'" : 3
				"nian.bits 'aaaacklmn'" : 15365
				"nian.bits 'mack'" : 5125
				"nian.solve 'aaaacklmn'" : ["almanacka", "anacka", "lack", "lacka", "mack", "macka", "mackla", "nacka"]
				"nian.solve 'eemncrrtö'" : ["cement", "cementrör", "cent", "center", "cert", "crème", "recent"]
				"nian.solve('rakeutraf').length" : 34
			d:
				"words.length" : 52269
				"_.first words" : "abakus"
				"_.last words" : "övärld"

			e:
				Nian : "http://svenska-apps.se/iphone-ipad/underhallning/svd-nian-babqpg.html"
				'_.countBy' : "http://underscorejs.org/#countBy"
				reduce : "https://coffeescript-cookbook.github.io/chapters/arrays/reducing-arrays"

		Morse :
			b:"""
# LOC:7 class constructor new @ indexOf * / + % == Math.floor for in "" if then else split join

class Morse
	constructor : (ab, alfabet) ->
	indexes : (i) -> []
	encode : (c) -> ""
	c2m : (word) -> ""
	decode : (code,i=0) -> ""
	m2c : (word) -> ""

#                          012345678901234567890123456789
morse  = new Morse '.-',  ' etianmsurwdkgohvf l pjbxcyzq'
morse1 = new Morse '*',   ' abcdefghijklmnopqrstuvwxyzåäö'
morse2 = new Morse '01',  ' abcdefghijklmnopqrstuvwxyzåäö'
morse3 = new Morse 'XYZ', ' abcdefghijklmnopqrstuvwxyzåäö'
morse4 = new Morse 'ABCD',' abcdefghijklmnopqrstuvwxyzåäö'
morse5 = new Morse 'BCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖA',' abcdefghijklmnopqrstuvwxyzåäö'
"""
			a:"""
class Morse
	constructor : (@ab, @alfabet) -> @n = @ab.length
	indexes : (i) -> if i==0 then [] else (@indexes (Math.floor (i-1) / @n)).concat [(i-1) % @n]
	encode : (c) -> (@ab[item] for item in @indexes @alfabet.indexOf c).join ""
	c2m : (word) -> (@encode c for c in word).join " "
	decode : (code,i=0) -> if code=="" then @alfabet[i] else @decode code[1..], @n*i+1+@ab.indexOf code[0]
	m2c : (word) -> (@decode(code) for code in word.split ' ').join ""
"""
			c:

				"morse.indexes 9" : [0,1,0]
				"morse.encode 'r'" : ".-."
				"morse.c2m 'morse'" : '-- --- .-. ... .'
				"morse.decode '.-.'" : 'r'
				"morse.m2c '-- --- .-. ... .'" : 'morse'

				"morse1.c2m 'alfa'" : '* ************ ****** *'
				"morse1.m2c '* ************ ****** *'" : 'alfa'

				"morse2.c2m 'alfabet'" : '0 101 11 0 1 10 0101'
				"morse2.m2c '0 101 11 0 1 10 0101'" : 'alfabet'

				"morse3.c2m 'tre'" : 'XZY XYZ XY'
				"morse3.m2c 'XZY XYZ XY'" : 'tre'

				"morse4.c2m 'fjorton'" : 'AB BB CC DB DD CC CB'
				"morse4.m2c 'AB BB CC DB DD CC CB'" : 'fjorton'

				"morse5.c2m 'tjugonio'" : 'U K V H P O J P'
				"morse5.m2c 'U K V H P O J P'" : 'tjugonio'

			d:
				"' abcd'.indexOf 'b'" : 2
			e:
				Morse : "https://sv.wikipedia.org/wiki/Morsealfabetet"
				indexOf : "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf"

#########################
	"A8: Advanced" :
#########################

		path:
			b: """
# LOC:1 concat if then else

tree = {3:0, 4:8, 5:3, 6:3, 10:5, 7:5, 12:6, 8:6, 20:10, 9:7, 24:12, 14:12}

path = (tree,x) -> []
"""
			a: """
path = (tree,x) -> if x==0 then return [] else [x].concat path tree,tree[x]
"""
			c:
				"path tree, 4" : [4,8,6,3]
				"path tree, 20" : [20,10,5,3]
				"path tree, 9" : [9,7,5,3]

		summa:
			b: """
# LOC:1 _.isEqual _.isNumber _.head _.tail

summa = (tree) -> 0
"""
			a: """
summa = (tree) -> return if _.isEqual tree,[] then 0 else if _.isNumber tree then tree else	summa(_.head tree) + summa _.tail tree
"""
			c:
				"summa [1,2,3,4]" : 10
				"summa [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]]" : 161
			d:
				"_.isNumber '12'" : false
				"_.isNumber 12" : true
				"_.isNumber [12]" : false
				"_.head [11,22,33]" : 11
				"_.tail [11,22,33]" : [22,33]
			e:
				"_.isEqual" : "http://underscorejs.org/#isEqual"
				"_.isNumber" : "http://underscorejs.org/#isNumber"
				"_.head" : "http://underscorejs.org/#head"
				"_.tail" : "http://underscorejs.org/#tail"


		"list recursion" :
			b:"""
# LOC:7 typeof if then else for in range min length
# Lägg märke till javascripts felaktiga hantering av tal vid jämförelse av listor.

compare = (a,b) -> -2

			"""
			a:"""
compare = (a,b) ->
	if typeof a != "object"
		if a > b then return -1 else if a < b then return 1 else return 0
	for i in range min a.length,b.length
		c = compare a[i],b[i]
		if c != 0 then return c
	0
"""
			c:
				"compare 11, 2" : -1
				"compare [11], [2]" : -1
				"compare [11], [10]" : -1
				"compare [11], [11]" : 0
				"compare [2], [11]" : 1
				"compare [1,[2,3]], [1,[2,3]]" : 0
				"compare [10,[2,3]], [1,[2,3]]" : -1
				"compare [1,[20,3]], [1,[2,3]]" : -1
				"compare [1,[2,30]], [1,[2,3]]" : -1
				"compare [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]], [3, [5,6], [7,8,10,12], [4,9,14,[20,23]], [[12,13],14]]" : -1
				"compare [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]], [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]]" : 0
				"compare [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]], [3, [5,6], [7,8,10,12], [4,9,14,[20,25]], [[12,13],14]]" : 1
			d:
				"typeof 1" : "number"
				"typeof 3.14" : "number"
				'typeof ""' : "string"
				"typeof []" : "object"
				"typeof {}" : "object"
				"min 1,2" : 1
				"min 2,1" : 1
				"11 > 2" : true
				"[11] > [2]" : false
				"[11] > [10]" : true
				"11 == 11" : true
				'"11" == "11"' : true
				"[11] == [11]" : false

		filter:
			b: """
# LOC:1 filter

djur = [
	{namn:'Fluffy',art:'kanin'}
	{namn:'Karo',art:'hund'}
	{namn:'Rocky',art:'hund'}
	{namn:'Albert',art:'fisk'}
	{namn:'Trixie',art:'katt'}
	{namn:'Herbert',art:'fisk'}
]

g = (djur, art) -> []

"""
			a: """
g = (djur, art) -> djur.filter (d) -> d.art == art

"""
			c:
				"g djur,'hund'" : [{namn:'Karo',art:'hund'},{namn:'Rocky',art:'hund'}]
				"g djur,'fisk'" : [{namn:'Albert',art:'fisk'},{namn:'Herbert',art:'fisk'}]
				"g djur,'kanin'" : [{namn:'Fluffy',art:'kanin'}]
				"g djur,'katt'" : [{namn:'Trixie',art:'katt'}]
				"g djur,'papegoja'" : []
			d:
				"[1, -2, 0, 3, -4].filter (x) -> x > 0" : [1,3]
			e:
				filter : "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"

		comprehension:
			b: """
# LOC:1 for

djur = [
	{namn:'Fluffy',art:'kanin'}
	{namn:'Karo',art:'hund'}
	{namn:'Rocky',art:'hund'}
	{namn:'Albert',art:'fisk'}
	{namn:'Trixie',art:'katt'}
	{namn:'Herbert',art:'fisk'}
]

namn = (djur) -> []

"""
			a: """
namn = (djur) -> (d.namn for d in djur)
"""
			c:
				"namn djur" : ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']
			d:
				"(2**i for i in range 5)" : [1,2,4,8,16]
			e:
				comprehension : "https://coffeescript-cookbook.github.io/chapters/arrays/list-comprehensions"

		reduce:
			b: """
# LOC:1 reduce

ica = [
	{pris: 123, antal:1}
	{pris: 34, antal:2}
	{pris: 78, antal:4}
	{pris: 96, antal:5}
]
konsum = [
	{pris: 100, antal:1}
	{pris: 30, antal:1}
	{pris: 70, antal:1}
	{pris: 90, antal:1}
]

summa = (varor) -> 0
"""
			a: """
summa = (varor) -> varor.reduce ((sum, vara) -> sum + vara.pris * vara.antal), 0
"""
			c:
				"summa ica" : 983
				"summa konsum" : 290
			d:
				"ica.reduce ((sum, vara) -> sum + vara.antal), 0" : 12
				"konsum.reduce ((sum, vara) -> sum + vara.pris), 0" : 290
			e:
				reduce : "https://coffeescript-cookbook.github.io/chapters/arrays/reducing-arrays"

		sortBy:
			b: """
# LOC:1 _.sortBy

djur = ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']

sortera = (djur,f) -> []
"""
			a: """
sortera = (djur,f) -> _.sortBy djur, f
			"""
			c:
				"sortera djur, (d) -> d.length" : ["Karo","Rocky","Fluffy","Albert","Trixie","Herbert"]
				"sortera djur" : ["Albert","Fluffy","Herbert","Karo","Rocky","Trixie"]
			d:
				"_.sortBy ['one', 'two', 'three', 'four'], 'length'" : ["one", "two","four","three"]
			e:
				"_.sortBy" : "http://underscorejs.org/#sortBy"

		groupBy:
			b: """
# LOC:1 _.groupBy

djur = ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']

gruppera = (djur,f) -> {}
"""
			a: """
gruppera = (djur,f) -> _.groupBy djur, f
"""
			c:
				"gruppera djur, (d) -> d.length" : {"4":["Karo"],"5":["Rocky"],"6":["Fluffy","Albert","Trixie"],"7":["Herbert"]}
				"gruppera djur, (d) -> _.last(d)" : {"y":["Fluffy","Rocky"],"o":["Karo"],"t":["Albert","Herbert"],"e":["Trixie"]}
			d:
				"_.groupBy ['one', 'two', 'three'], 'length'" : {3: ["one", "two"], 5: ["three"]}
			e:
				"_.groupBy" : "http://underscorejs.org/#groupBy"

		split:
			b: """
# LOC:1 split for in _.object

parametrar = (url) -> {}
"""
			a: """
parametrar = (url) -> _.object(f.split '=' for f in url.split('?')[1].split('&'))
"""
			c:
				"parametrar 'dn.se?x=0&y=1'" : {x:'0', y:'1'}
				"parametrar 'svd.se?page=7'" : {page : '7'}
				"parametrar 'aftonbladet.se?article=123456&date=2016-12-01'" : {article:'123456', date:'2016-12-01'}
				"parametrar 'expressen.se?city=Stockholm'" : {city : 'Stockholm'}
				"parametrar 'http://stackoverflow.com/search?q=coffeescript'" : {q : 'coffeescript'}
			d:
				"'1,2,3'.split ','" : ["1","2","3"]
				"_.object ['moe', 'larry', 'curly'], [30, 40, 50]" : {moe: 30, larry: 40, curly: 50}
				"_.object [['moe', 30], ['larry', 40], ['curly', 50]]" : {moe: 30, larry: 40, curly: 50}
			e:
				"_.object" : "http://underscorejs.org/#object"
				split : "https://coffeescript-cookbook.github.io/chapters/strings/splitting-a-string"


		PokerHand :
			b: """
# LOC:10 nilsson: compare bsort underscore: _.size _.groupBy _.unzip _.uniq "" [] {}
# javascript: for in if then else substring length parseInt split indexOf

poker = (a,b) -> -2
"""
			a: """
poker = (a,b) -> compare calc(a.split(" ")), calc(b.split(" "))
calc = (hand) ->
	groups = _.groupBy('  23456789TJQKA'.indexOf(card[2]) for card in hand)
	[score, ranks] = _.unzip reverse bsort ([cnt.length, parseInt(rank)] for rank, cnt of groups)
	if score.length == 5
		if compare(ranks, [14,5,4,3,2])==0 then ranks = [5,4,3,2,1]
		straight = if ranks[0] - ranks[4] == 4 then 1 else 0
		flush = if _.size(_.uniq(suit.substring(0,2) for suit in hand)) == 1 then 1 else 0
		score = [[[1], [3,1,1,1]], [[3,1,1,2], [5]]][flush][straight]
	[score, ranks]
"""
			c:
				"poker 'kl8 ruA ru8 klA kl9', 'ru7 sp2 ru5 sp3 klA'": -1
				"poker 'kl8 spT klK hj9 sp4', 'ru7 sp2 ru5 sp3 klA'": 1
				"poker 'kl8 ruA ru8 klA kl9', 'kl8 ruA ru8 klA klT'": 1
				"poker 'kl8 ruA ru8 klA kl9', 'kl8 ruA ru8 klA kl7'": -1
				"poker 'kl8 ruA ru8 klA kl9', 'klT ruA ruT klA kl9'": 1
				"poker 'spA sp2 sp3 sp4 sp5', 'ruA ru2 ru3 ru4 ru5'": 0
				"poker 'spA hjA ruA klA sp5', 'ruA ru2 ru3 ru4 ru5'": 1
				"poker 'ru7 sp7 hj7 kl7 spJ', 'ru6 sp5 hj6 kl6 spQ'": -1
				"poker 'ru8 sp8 hj8 kl9 sp9', 'ru6 sp6 hj6 ru9 hj9'": -1
				"poker 'ru7 ru3 ru5 ru9 ruK', 'hj7 hj3 hj5 hj9 hjK'": 0
				"poker 'ru7 ru3 ru5 ru9 ruK', 'hj7 hj3 hj5 hj9 hjK'": 0
				"poker 'ru7 ru3 ru5 ru9 ruK', 'hj7 hj3 hj5 hj9 hjK'": 0
				"poker 'ru7 hj8 ru9 hj5 ru6', 'hj7 ru8 kl9 hjT sp6'": 1
				"poker 'ru7 hj8 ru8 kl8 ruJ', 'kl7 hj9 ru9 kl9 ruQ'": 1
				"poker 'ru7 hj7 ru8 kl8 ruJ', 'sp7 kl7 sp8 hj8 ruT'": -1
				"poker 'hj7 kl3 sp3 kl4 hjA', 'sp7 hj3 ru3 klK spA'": 1
				"poker 'sp7 hj3 ru2 kl4 spA', 'hj7 ru3 ru5 sp4 hjA'": 1
			d:
				'[1,2,3] == [1,2,3]' : false
				'2 < 11' : true
				'"2" < "11"' : false
				'[2] < [11]' : false
				'["2"] < ["11"]' : false
				'compare [2], [11]' : 1
				'compare [1,2,3], [1,2,3]' : 0
				'compare [11], [2]' : -1
				'bsort [47,12,25]' : [12,25,47]
				'bsort [[11,13],[11,12],[2,2]]' : [[2,2],[11,12],[11,13]]
				'bsort [[11,13],[11,12],[2,2]], (a,b) -> compare b,a' : [[11,13],[11,12],[2,2]]
				'bsort ["per", "anna", "bo"]' : ["anna","bo","per"]
				'_.groupBy ["per", "anna", "karl"], "length"' : {"3":["per"],"4":["anna","karl"]}
				'_.unzip [["moe", 30, true], ["larry", 40, false]]' : [['moe', 'larry'], [30, 40], [true, false]]
				'_.uniq [5,4,1,2,1,9]' : [5,4,1,2,9]

			e:
				Pokerhand : "https://sv.wikipedia.org/wiki/Pokerhand"
				"_.size" : "http://underscorejs.org/#size"
				"_.unzip" : "http://underscorejs.org/#unzip"
				"_.uniq" : "http://underscorejs.org/#uniq"


		Matematik :
			b: """
# LOC:17 if then else * / + - % ** Math.sqrt == <= for in range [] concat

a = (x) -> 0
b = (x) -> 0
c = (x) -> 0
d = (x) -> 0
e = (x) -> 0
h = (n) -> 0
f = (x) -> 0
g = (n) -> 0
k = (x,y) -> 0
l = (a,b) -> [0,0]
p = (a,b) -> 0
n = (y) -> false
m = (n) -> []
q = (n) -> []
"""
			a:"""
a = (n) -> 2*n+1
b = (n) -> 2*n+2
c = (n) -> (-1)**n * n
d = (n) -> 10**n
e = (n) -> 2**n
h = (n) -> if n==0 then 0 else n+h(n-1)
f = (n) -> if n==0 then 1 else n*f(n-1)
g = (n) -> if n<=1 then 1 else g(n-1) + g(n-2)
k = (x,y) -> if y == 0 then x else k y, x % y
l = (a,b) -> [a/k(a,b),b/k(a,b)]
p = (a,b) -> Math.sqrt(a*a+b*b)
n = (y) -> if y%100==0 then y%400==0 else y%4==0
m = (n) -> i for i in [2...n] when n % i == 0
q = (n) ->
	for i in range n-1,1,-1
		v = i if n%i==0
	if v then [v].concat q(n/v) else [n]
"""
			c:
				"a(i) for i in range 12" : [1,3,5,7,9,11,13,15,17,19,21,23]
				"b(i) for i in range 12" : [2,4,6,8,10,12,14,16,18,20,22,24]
				"c(i) for i in range 12" : [0,-1,2,-3,4,-5,6,-7,8,-9,10,-11]
				"d(i) for i in range 6" : [1,10,100,1000,10000,100000]
				"e(i) for i in range 10" : [1,2,4,8,16,32,64,128,256,512]
				"h(i) for i in range 12" : [0,1,3,6,10,15,21,28,36,45,55,66]
				"f(i) for i in range 9" : [1,1,2,6,24,120,720,5040,40320]
				"g(i) for i in range 12" : [1,1,2,3,5,8,13,21,34,55,89,144]
				"[k(7,11),k(18,42),k(100,30),k(99,105)]" : [1,6,10,3]
				"[l(1,4),l(2,4),l(12,18),l(90,100)]" : [[1,4],[1,2],[2,3],[9,10]]
				"[p(3,4),p(5,12),p(7,24),p(9,40),p(11,60)]" : [5,13,25,41,61]
				"[n(2000),n(2016),n(2017),n(2020),n(2100)]" : [true,true,false,true,false]
				"[m(17),m(60)]" : [[],[2,3,4,5,6,10,12,15,20,30]]
				"[q(17),q(60)]" : [[17],[2,2,3,5]]
			d:
				"range 10" : [0,1,2,3,4,5,6,7,8,9]
				"i for i in range 10" : [0,1,2,3,4,5,6,7,8,9]
				"i*i for i in range 10" : [0,1,4,9,16,25,36,49,64,81]
				"i % 2 for i in range 6" : [0,1,0,1,0,1]
				"i % 2 == 0 for i in range 6" : [true,false,true,false,true,false]
				"Math.sqrt 25" : 5
				"[1,2].concat [3,4]" : [1,2,3,4]
			e:
				comprehension : "https://coffeescript-cookbook.github.io/chapters/arrays/list-comprehensions"
				rekursion : "http://www.matteboken.se/lektioner/matte-5/talfoljder-och-induktionsbevis/rekursion"
				talserier : "http://www.matteboken.se/lektioner/matte-3/ovningsexempel/talserier"
				pythagoras : "http://www.matteboken.se/lektioner/skolar-9/geometri/pythagoras-sats"
				delbarhet : "http://www.matteboken.se/lektioner/matte-1/tal/delbarhet"

#########################
	"A9: Problem" :
#########################

		Triangelskolan:
			b: """
# LOC:5
# Se länk nedan för problembeskrivning.
f = (x) -> 0
"""
			a: """
f = (x) ->
	for i in range 2000
		if i*(i+1)/2 > x
			return i-1
	0
			"""
			c:
				"f 1" : 1
				"f 4" : 2
				"f 10" : 4
				"f 20" : 5
			f:
				"f 123" : 15
				"f 1234" : 49
				"f 123456" : 496
				"f 1000000" : 1413

			e:
				"Triangelskolan" : "https://po.kattis.com/problems/triangel"

		Bio:
			b: """
# LOC:8
# Se länk nedan för problembeskrivning.
f = (platser,grupper) -> 0
			"""
			a: """
f = (platser,grupper) ->
	miss = 0
	for grupp in grupper
		if grupp <= platser
			platser -= grupp
		else
			miss += 1
	miss
"""
			c:
				"f 10,[1,2,3,4,5]" : 1
				"f 1,[1,1,1,1,1,1,1,1,1,1]" : 9
			f:
				"f 100,[5,4,9,2,9,9,4,3,7,4,5,4,9,2,9,9,4,3,7,4,5,4,9,2,9,9,4,3,7,4]" : 12
				"f 19,[5,4,1,2,1,9,4,3,7,4]" : 4
			e:
				"Bio" : "https://po.kattis.com/problems/bio"

		Bio2:
			b: """
			# LOC:8
# Se länk nedan för problembeskrivning.
f = (platser,grupper) -> 0
			"""
			a: """
f = (platser,grupper) ->
	ok = 0
	for grupp in grupper
		if grupp <= platser
			platser -= grupp
			ok += 1
		else
			return grupper.length - ok
	grupper.length - ok
"""
			c:
				"f 10,[1,2,3,4,5]" : 1
				"f 1,[1,1,1,1,1,1,1,1,1,1]" : 9
			f:
				"f 100,[5,4,9,2,9,9,4,3,7,4,5,4,9,2,9,9,4,3,7,4,5,4,9,2,9,9,4,3,7,4]" : 13
				"f 19,[5,4,1,2,1,9,4,3,7,4]" : 5
				"f 40,[5,4,1,2,1,9,4,3,7,4]" : 0
			e:
				"Bio2" : "https://po.kattis.com/problems/bio2"

		Fullsatt:
			b: """
# LOC:12
# Se länk nedan för problembeskrivning.
f = (stolar,hallplatser) -> 0
			"""
			a: """
f = (stolar,hallplatser) ->
	ombord = []
	miss = []
	for hallplats,i in hallplatser
		hpl = i+1
		ombord = (p for p in ombord when p != hpl)
		for person in hallplats
			if ombord.length < stolar
				ombord.push person
			else
				miss.push person
	miss.length
"""
			c:
				"f 3,[[2],[3],[4]]" : 0
				"f 1,[[2,3,4,5],[3,4,5],[4,5],[5]]" : 6
				"f 4,[[2,3],[3,3,3],[4,5,5,5,4],[5,5]]" : 2
			e:
				"Fullsatt" : "https://po.kattis.com/problems/fullsatt"

		PE01:
			b: """
			# LOC:1
# If we list all the natural numbers below 10
# that are multiples of 3 or 5,
# we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

f = (n) -> 0
			"""
			a: """
f = (n) -> (i for i in range n when i%3==0 or i%5==0).reduce (t, s) -> t + s
"""
			c:
				"f 10" : 23
				"f 100" : 2318
				"f 200" : 9168
				"f 500" : 57918
				#"f 1000" : 233168
				"f 2000" : 931668
			e:
				"Multiples of 3 and 5" : "https://projecteuler.net/problem=1"

		PE02:
			b: """
			# LOC:7
# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms. By starting with
# 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

f = (n) -> 0
			"""
			a: """
f = (n) ->
	[a,b] = [0,1]
	sum = 0
	for i in range n
		if b%2==0 then sum+=b
		if b>n then return sum
		[a,b] = [b,a+b]
"""
			c:
				"f 40" : 44
				"f 400" : 798
				"f 4000" : 3382
				"f 40000" : 60696
				"f 400000" : 257114
				#"f 4000000" : 4613732
			e:
				"Even Fibonacci numbers" : "https://projecteuler.net/problem=2"

		PE03:
			b: """
			# LOC: 9
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 51475143 ?

f = (n) -> 0
			"""
			a: """
f = (n) ->
	factor = 0
	d = 2
	while n > 1
		while n % d == 0
			factor =  d
			n = int n/d
		d = d + 1
	factor
"""
			c:
				"f 13195" : 29
				"f 51475143" : 12497
			e:
				"Largest prime factor" : "https://projecteuler.net/problem=3"
