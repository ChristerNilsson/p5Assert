# a : facit, might be any language. Not used by p5Dojo.
# b : comment line. LOC and keyword clues
# c : call in Coffeescript syntax, three columns
# d : axioms, two columns

data = 

	"Nyheter" :
		"Nyheter" :
			b:"""
# NYHETER 2017-03-05
#   A8: Matematik
# NYHETER 2017-03-01
#   A3: Listor, Växelcykel, Kalkylator
#   A5: Palindrom, Rövarspråk
#   A7: Bignum, Simplex, Complex
#   A8: List recursion, Pokerhand

# Klicka nu på A0!
"""
			a:""
	
	"A0: One Parameter" : 
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

		Noel: 
			b: """
			# Någon av dessa löser problemet: + - * / %

			Noel = (x) -> 0
			"""
			a: "Noel = (x) -> 2*x"
			c: 
				"Noel 5" : 10
				"Noel 6" : 12 
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0

		Greta: 
			b: """
			# + - * / %

			Greta = (x) -> 0
			"""
			a: "Greta = (x) -> x*x"
			c: 
				"Greta 1" : 1
				"Greta 2" : 4
				"Greta 3" : 9
				"Greta 4" : 16
				"Greta 5" : 25
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0

		Viktor: 
			b: """
			# + - * / %

			Viktor = (x) -> 0
			"""
			a: "Viktor = (x) -> -x"
			c: 
				"Viktor -4" : 4
				"Viktor 3" : -3
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0

		Sabrina: 
			b: """
			# + - * / %

			Sabrina = (x) -> 0
			"""
			a: "Sabrina = (x) -> x-2"
			c: 
				"Sabrina 7" : 5
				"Sabrina 17" : 15
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0

		David: 
			b: """
			# + - * / %

			David = (x) -> 0
			"""
			a: "David = (x) -> x/2"
			c: 
				"David 8" : 4
				"David 6" : 3
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0

		Gabriella: 
			b: """
			# + - * / %

			Gabriella = (x) -> -1	
			"""
			a: "Gabriella = (x) -> x % 2"
			c: 
				"Gabriella 7" : 1
				"Gabriella 8" : 0
				"Gabriella 10" : 0
				"Gabriella 11" : 1
			d:
				"3 + 2" : 5
				"3 - 2" : 1
				"3 * 2" : 6
				"6 / 2" : 3
				"5 % 2" : 1
				"6 % 2" : 0

		Beppe: 
			b: """
			# == < > !=

			Beppe = (x) -> null		
			"""
			a: "Beppe = (x) -> x == 2"
			c:
				"Beppe 1" : false
				"Beppe 2" : true
				"Beppe 3" : false
				"Beppe 4" : false
			d:
				"1 == 1" : true
				"1 == 2" : false
				"1 != 1" : false
				"1 != 2" : true
				"1 < 1" : false
				"1 < 2" : true
				"1 > 1" : false
				"1 > 2" : false
				"1 <= 1" : true
				"1 <= 2" : true
				"1 >= 1" : true
				"1 >= 2" : false

		Karolina: 
			b: """
			# == < > !=

			Karolina = (x) -> null
			"""
			a: "Karolina = (x) -> x > 2"
			c:
				"Karolina 1" : false
				"Karolina 2" : false
				"Karolina 3" : true
				"Karolina 4" : true
			d:
				"1 == 1" : true
				"1 == 2" : false
				"1 != 1" : false
				"1 != 2" : true
				"1 < 1" : false
				"1 < 2" : true
				"1 > 1" : false
				"1 > 2" : false
				"1 <= 1" : true
				"1 <= 2" : true
				"1 >= 1" : true
				"1 >= 2" : false

		Kasper: 
			b: """
			# == < > !=

			Kasper = (x) -> "Gone fishing"
			"""
			a: "Kasper = (x) -> x > 2"
			c:
				"Kasper 1" : false
				"Kasper 2" : false
				"Kasper 3" : true
				"Kasper 4" : true
			d:
				"1 == 1" : true
				"1 == 2" : false
				"1 != 1" : false
				"1 != 2" : true
				"1 < 1" : false
				"1 < 2" : true
				"1 > 1" : false
				"1 > 2" : false
				"1 <= 1" : true
				"1 <= 2" : true
				"1 >= 1" : true
				"1 >= 2" : false

		Miranda: 
			b: """
			# == < > !=

			Miranda = (x) -> "Tralala..."
			"""
			a: "Miranda = (x) -> x != 2"
			c:
				"Miranda 1" : true
				"Miranda 2" : false
				"Miranda 3" : true
				"Miranda 4" : true
			d:
				"1 == 1" : true
				"1 == 2" : false
				"1 != 1" : false
				"1 != 2" : true
				"1 < 1" : false
				"1 < 2" : true
				"1 > 1" : false
				"1 > 2" : false
				"1 <= 1" : true
				"1 <= 2" : true
				"1 >= 1" : true
				"1 >= 2" : false

	"A1: Two Parameters" : 
	
		Operator1: 
			b: """
			# + - * / %

			g = (a,b) -> 0
			"""
			a: "g = (a,b) -> a*b"
			c: 
				"g 3,4" : 12
				"g 4,6" : 24

		Operator2: 
			b: """
			# + - * / %

			g = (a,b) -> 0
			"""
			a: "g = (a,b) -> a+b"
			c: 
				"g 3,4" : 7
				"g 4,6" : 10

		Operator3: 
			b: """
			# + - * / %

			g = (a,b) -> 0
			"""
			a: "g = (a,b) -> b-a"
			c: 
				"g 3,4" : 1
				"g 4,6" : 2

		Operator4: 
			b: """
			# + - * / %

			g = (a,b) -> 0
			"""
			a: "g = (a,b) -> a/b"
			c: 
				"g 8,4" : 2
				"g 12,3" : 4

		Operator5: 
			b: """
			# + - * / %

			g = (a,b) -> 0
			"""
			a: "g = (a,b) -> a%b"
			c:
				"g 8,4" : 0
				"g 9,4" : 1
				"g 10,4" : 2
				"g 11,4" : 3
	
		Operator6: 
			b: """
			# + - * / % ==

			g = (a,b) -> null
			"""
			a: "g = (a,b) -> a == b"
			c:
				"g 0,0" : true
				"g 1,1" : true
				"g 7,4" : false
				"g 6,4" : false

		Operator7: 
			b: """
			# + - * / % ==

			g = (a,b) -> null
			"""
			a: "g = (a,b) -> a - b == 1"
			c:
				"g 7,6" : true
				"g 5,4" : true
				"g 7,4" : false
				"g 6,4" : false

		Operator8: 
			b: """
			# + - * / % ==

			g = (a,b) -> null
			"""
			a: "g = (a,b) -> a + b == 7"
			c:
				"g 7,0" : true
				"g 5,2" : true
				"g 7,4" : false
				"g 6,4" : false

	'A2: range lerp for' :

		range:
			b:"""
# LOC:3 range []

f = (n) -> []
g = (a,b) -> []
h = (a,b,n) -> []
"""
			a:"""
f = (n) -> range n
g = (a,b) -> range a,b
g = (a,b,n) -> range a,b,n
			"""
			c:
				"f 5" : [0,1,2,3,4]
				"f 6" : [0,1,2,3,4,5]
				"g 1,5" : [1,2,3,4]
				"g 2,4" : [2,3]
				"g -2,0" : [-2,-1]
				"h 0,10,1" : [0,1,2,3,4,5,6,7,8,9]
				"h 0,10,2" : [0,2,4,6,8]
				"h 0,-10,-1" : [0,-1,-2,-3,-4,-5,-6,-7,-8,-9]
			d:
				"range 3" : [0,1,2]
				"range 1,4" : [1,2,3]
				"range 1,9,2" : [1,3,5,7]

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

	"A3: [ ]" :

		Introduktion:
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

		Listor :
			b:"""
# LOC:11 length push concat pop sort .. []

antal = (a) -> 0
fetch = (a,i) -> 0 
konkatenera = (a,b) -> [] 
sortera = (a) -> []
första = (a,n) -> []
mitti = (a,i,j) -> []
sista = (a,n) -> []
"""
			a:"""
antal = (a) -> a.length
fetch = (a,i) -> a[i]
konkatenera = (a,b) -> a.concat b
sortera = (a) -> a.sort()
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
				"sortera [5,4,1,2,9,3,7]" : [1,2,3,4,5,7,9]
				"första [11,12,13,14,15],3" : [11,12,13]
				"mitti [11,12,13,14,15],1,2" : [12,13]
				"sista [11,12,13,14,15],4" : [12,13,14,15]
			d:
				"[1,2].concat [3,4]" : [1,2,3,4]
				"[2,3,4,5].length" : 4
				"[11,22,33,44][2]" : 33
				"[11,22,33,44][..2]" : [11,22,33]
				"[11,22,33,44][1..]" : [22,33,44]
				"[11,22,33,44][1..2]" : [22,33]
				"[4,2,3,1].sort()" : [1,2,3,4]
				"[4,2,3,1].sort().reverse()" : [4,3,2,1]

		Växelcykel :
			b: """
# LOC:4 [] for in push sort - /
# Din växelcykel har stora och små kugghjul. I vilken i ordning ligger växlarna? 

gear = (big, small) -> []
"""
			a: """
gear = (big, small) ->
	res = []
	res.push [Math.round(b/s * 100)/100,b,s] for s in small for b in big
	res.sort() 
"""	
			c:	
				"gear [43,53], [13,21]" : [[2.05,43,21],[2.52,53,21],[3.31,43,13],[4.08,53,13]]
				"gear [43,53], [13,15,17,19,21]" : [[2.05,43,21],[2.26,43,19],[2.52,53,21],[2.53,43,17],[2.79,53,19],[2.87,43,15],[3.12,53,17],[3.31,43,13],[3.53,53,15],[4.08,53,13]]
			d:
				"Math.round 3.1415" : 3
				"Math.round(3.1415 * 10)/10" : 3.1

		Kalkylator :
			b: """
# LOC:7 [] for in split == push pop if else parseInt

calc = (command) -> 0
"""
			a: """
calc = (command) ->
	stack = []
	for cmd in command.split ' '
		if cmd == '+' then stack.push stack.pop() + stack.pop()
		else if cmd == '*' then stack.push stack.pop() * stack.pop()
		else stack.push parseInt cmd
	stack.pop()		
"""
			c:
				"calc '2'" : 2
				"calc '2 3'" : 3
				"calc '2 3 +'" : 5
				"calc '2 3 *'" : 6
				"calc '2 3 4 * +'" : 14
			d:
				"'a b c'.split ' '" : ['a','b','c']
				'1 + 2' : 3
				"'1' + '2'" : '12'
				"1 + '2'" : '12'
				"'1' + 2" : '12'
				"parseInt '3'" : 3
				"parseFloat '3.14'" : 3.14

	"A4: { }" :
		"Boys and Girls" :
			b : """
# LOC:7 {} [] for in length + /

girls = [{name: 'Sabrina', age: 12}, {name: 'Helene', age: 10}, {name: 'Anna', age: 11}]
boys = [{name: 'David', age: 10}, {name: 'Henry', age: 11}, {name: 'Noel', age: 14}, {name: 'Numa', age: 3}]

names = (kids) -> kid.name for kid in kids
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

	'A5: " "' :

		Introduktion:
			b:"""
# LOC:8 length [] .. + "" indexOf split join for in
# LOC betyder Lines Of Code, dvs antal kodrader.
# Åtta kodrader är lagom för detta problem.
# Färre innebär sämre läsbarhet.
# Har du fler bör du fundera på en kortare lösning.

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


	"A6: Interpolation" : 

		linearequation1: 
			b: """
			# LOC:1 *

			f = (x) -> 0
			"""
			a: "f = (x) -> 2 * x"
			c:  
				"f 2" : 4
				"f 3" : 6

		linearequation2: 
			b: """
			# LOC:1 * +

			f = (x) -> 0
			"""
			a: "f = (x) -> 3 + 2 * x"
			c: 
				"f 2" : 7
				"f 3" : 9

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
			a: "h2r = (x) -> (map 15-x,0,12,0,2*Math.PI) % (2*Math.PI)"
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

	"A7: class" :

		Kid :
			b : """
# LOC:8 class constructor new @ [] for in length + /
# Innan du löser denna uppgift: Be att få se Bouncing Balls!

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
		sx = "#{@x}" if @x > 0
		sx = "#{@x}" if @x < 0

		sy = "" if @y == 0
		sy = "-i" if @y == -1
		sy = "i" if @y == 1
		sy = "#{@y}i" if @y > 1
		sy = "#{@y}i" if @y < -1

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


	"A8: Advanced" :

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

		PokerHand :
			b: """
# LOC:10 nilsson: compare bsort underscore: _.size _.groupBy _.unzip _.uniq "" [] {}
# javascript: for in if then else substring length parseInt split indexOf

# https://sv.wikipedia.org/wiki/Pokerhand

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

		Matematik :
			b: """
# LOC:13 if then else * / + - % ** Math.sqrt == <= for in range []

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
n = (a,b) -> false
m = (a,b) -> []
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
m = (n) -> i for i in [1..n] when n % i == 0

"""
			c:
				"[a(0),a(1),a(2),a(3),a(4),a(5)]" : [1,3,5,7,9,11]
				"[b(0),b(1),b(2),b(3),b(4),b(5)]" : [2,4,6,8,10,12]
				"[c(0),c(1),c(2),c(3),c(4),c(5)]" : [0,-1,2,-3,4,-5]
				"[d(0),d(1),d(2),d(3),d(4),d(5)]" : [1,10,100,1000,10000,100000]
				"[e(0),e(1),e(2),e(3),e(4),e(5)]" : [1,2,4,8,16,32]
				"[h(0),h(1),h(2),h(3),h(4),h(5),h(6)]" : [0,1,3,6,10,15,21]
				"[f(0),f(1),f(2),f(3),f(4),f(5),f(10)]" : [1,1,2,6,24,120,3628800]
				"[g(0),g(1),g(2),g(3),g(4),g(5),g(6)]" : [1,1,2,3,5,8,13]
				"[k(7,11),k(18,42),k(100,30),k(99,105)]" : [1,6,10,3]
				"[l(1,4),l(2,4),l(12,18),l(90,100)]" : [[1,4],[1,2],[2,3],[9,10]]
				"[p(3,4),p(5,12),p(7,24),p(9,40)]" : [5,13,25,41]
				"[n(2000),n(2016),n(2017),n(2020),n(2100)]" : [true,true,false,true,false]
				"[m([12]),m(33),m(17)]" : [[1,2,3,4,6,12],[1,3,11,33],[1,17]]
