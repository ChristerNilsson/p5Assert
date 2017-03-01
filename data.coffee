# a : facit, might be any language. Not used by p5Dojo.
# b : comment line. LOC and keyword clues
# c : call in Coffeescript syntax

data = 
	
	"A0: One Parameter" : 
		Operator1 :  
			b: """
			# Försök att skapa funktionen f.
			# f(2) ska bli 2. f(3) ska bli 3.
			# Den första kolumnen (gul) innehåller INDATA.
			# Den andra kolumnen (grön) innehåller UTDATA du ska återskapa.
			# Den tredje kolumnen (röd eller grön) innehåller UTDATA skapad av din kod.
			
			# Se till att göra de RÖDA cellerna GRÖNA! Gå till sista raden med PgDn.
			
			# Ändra nollan till en tvåa. Nu blir enbart den första RÖDA cellen GRÖN.
			# Ändra tvåan till en trea.  Nu blir enbart den andra RÖDA cellen GRÖN.
			# Ändra trean till ett x.    Nu blir båda de RÖDA cellerna GRÖNA!
			
			# Gå till nästa övning genom att klicka på Operator2.

			f = (x) -> 0
			"""
			a: "f = (x) -> x"
			c: 
				"f 2" : 2
				"f 3" : 3 

		Operator2: 
			b: """
			# Välj en av dessa operatorer: + - * / %
			# f(7) == 8
			# f(8) == 9
			# f(x) == ?
			# Sju ska bli åtta och åtta ska bli nio. Vad ska f skicka ut?
			
			f = (x) -> 0
			"""
			a: "f = (x) -> x+1"
			c: 
				"3+2" : 5
				"3-2" : 1
				"3*2" : 6
				"6/2" : 3
				"5%2" : 1
				"6%2" : 0
				"f 7" : 8
				"f 8" : 9 

		Operator3: 
			b: """
			# + - * / %

			f = (x) -> 0
			"""
			a: "f = (x) -> 2*x"
			c: 
				"f 5" : 10
				"f 6" : 12 

		Operator4: 
			b: """
			# + - * / %

			f = (x) -> 0
			"""
			a: "f = (x) -> x*x"
			c: 
				"f 5" : 25
				"f 6" : 36

		Operator5: 
			b: """
			# + - * / %

			f = (x) -> 0
			"""
			a: "f = (x) -> -x"
			c: 
				"f -4" : 4
				"f 3" : -3

		Operator6: 
			b: """
			# + - * / %

			f = (x) -> 0
			"""
			a: "f = (x) -> x-2"
			c: 
				"f 7" : 5
				"f 17" : 15

		Operator7: 
			b: """
			# + - * / %

			f = (x) -> 0
			"""
			a: "f = (x) -> x/2"
			c: 
				"f 8" : 4
				"f 6" : 3

		Operator8: 
			b: """
			# + - * / %

			f = (x) -> 0		
			"""
			a: "f = (x) -> x%2"
			c: 
				"f 7" : 1
				"f 8" : 0
				"f 10" : 0
				"f 11" : 1

		Operator9: 
			b: """
			# == < > !=

			f = (x) -> null			
			"""
			a: "f = (x) -> x == 2"
			c:
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
				"f 1" : false
				"f 2" : true
				"f 3" : false
				"f 4" : false

		Operator10: 
			b: """
			# == < > !=

			f = (x) -> null		
			"""
			a: "f = (x) -> x > 2"
			c:
				"f 1" : false
				"f 2" : false
				"f 3" : true
				"f 4" : true

		Operator11: 
			b: """
			# == < > !=

			f = (x) -> null		
			"""
			a: "f = (x) -> x > 2"
			c:
				"f 1" : false
				"f 2" : false
				"f 3" : true
				"f 4" : true

		Operator12: 
			b: """
			# == < > !=

			f = (x) -> null	
			"""
			a: "f = (x) -> x != 2"
			c:
				"f 1" : true
				"f 2" : false
				"f 3" : true
				"f 4" : true

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
# LOC:3 range

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
				"range 3" : [0,1,2]
				"range 1,4" : [1,2,3]
				"range 1,9,2" : [1,3,5,7]
				"f 5" : [0,1,2,3,4]
				"f 6" : [0,1,2,3,4,5]
				"g 1,5" : [1,2,3,4]
				"g 2,4" : [2,3]
				"g -2,0" : [-2,-1]
				"h 0,10,1" : [0,1,2,3,4,5,6,7,8,9]
				"h 0,10,2" : [0,2,4,6,8]
				"h 0,-10,-1" : [0,-1,-2,-3,-4,-5,-6,-7,-8,-9]

		"lerp":
			b:"""
# LOC:1 lerp
# Försök lösa uppgiften både med och utan lerp

f = (a,b,i) -> 0
"""
			a:"""
f = (a,b,i) -> lerp a,b,i
			"""
			c:
				"lerp 8,12,0" : 8
				"lerp 8,12,1" : 12
				"lerp 8,12,0.5" : 10
				"lerp 8,12,-1" : 4
				"lerp 8,12,2" : 16
				"f 10,20,0" : 10
				"f 10,20,1" : 20
				"f 10,20,2" : 30
				"f 10,20,0.5" : 15
				"f 10,20,-1" : 0

		"for":
			b:"""
# LOC:1 for in range lerp
# Försök lösa uppgiften både med och utan lerp

f = (a,b,n) -> []
"""
			a:"""
f = (a,b,n) -> lerp a,b,i for i in range n
			"""
			c:
				"(i*i for i in range 5)" : [0,1,4,9,16]				
				"f 0,0,5" : [0,0,0,0,0]
				"f 1,2,5" : [1,2,3,4,5]
				"f 5,4,5" : [5,4,3,2,1]
				"f -1,-2,5" : [-1,-2,-3,-4,-5]
				"f 5,25,10" : [5,25,45,65,85,105,125,145,165,185]
				"f -0.1,0.0,3" : [-0.1,0.0,0.1]

	"A3: [ ]" :

		Introduktion:
			b:"""
# LOC:16 if < then else
# Sortera UTAN att använda loopar
# Du får inte heller använda någon punkt

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
				"if 1 < 2 then [1,2] else [2,1]" : [1,2]
				"sort2 3,4" : [3,4]
				"sort2 4,3" : [3,4]

				"sort3 3,4,5" : [3,4,5]
				"sort3 3,5,4" : [3,4,5]
				"sort3 4,3,5" : [3,4,5]
				"sort3 4,5,3" : [3,4,5]
				"sort3 5,3,4" : [3,4,5]
				"sort3 5,4,3" : [3,4,5]

				"sort4 3,4,5,6" : [3,4,5,6]
				"sort4 3,4,6,5" : [3,4,5,6]
				"sort4 3,5,4,6" : [3,4,5,6]
				"sort4 3,5,6,4" : [3,4,5,6]
				"sort4 3,6,4,5" : [3,4,5,6]
				"sort4 3,6,5,4" : [3,4,5,6]

				"sort4 4,3,5,6" : [3,4,5,6]
				"sort4 4,3,6,5" : [3,4,5,6]
				"sort4 4,5,3,6" : [3,4,5,6]
				"sort4 4,5,6,3" : [3,4,5,6]
				"sort4 4,6,3,5" : [3,4,5,6]
				"sort4 4,6,5,3" : [3,4,5,6]

				"sort4 5,3,4,6" : [3,4,5,6]
				"sort4 5,3,6,4" : [3,4,5,6]
				"sort4 5,4,3,6" : [3,4,5,6]
				"sort4 5,4,6,3" : [3,4,5,6]
				"sort4 5,6,3,4" : [3,4,5,6]
				"sort4 5,6,4,3" : [3,4,5,6]

				"sort4 6,3,4,5" : [3,4,5,6]
				"sort4 6,3,5,4" : [3,4,5,6]
				"sort4 6,4,3,5" : [3,4,5,6]
				"sort4 6,4,5,3" : [3,4,5,6]
				"sort4 6,5,3,4" : [3,4,5,6]
				"sort4 6,5,4,3" : [3,4,5,6]

				"sort5 5,4,3,2,1" : [1,2,3,4,5]
				"sort5 3,5,2,4,1" : [1,2,3,4,5]
				"sort5 5,2,3,4,1" : [1,2,3,4,5]

		Listor :
			b:"""
# LOC:11 length push concat pop sort .. []

a = [1,2,3]
b = [4,5,6]
c = [5,4,1,2,9,3,7]
d = [11,12,13,14,15]

antal = (a) -> 0
fetch = (a,i) -> 0 
konkatenera = (a,b) -> [] 
sortera = (a) -> []
första = (a,n) -> []
mitti = (a,i,j) -> []
sista = (a,n) -> []
"""
			a:"""
a = [1,2,3]
b = [4,5,6]
c = [5,4,1,2,9,3,7]
d = [11,12,13,14,15]

antal = (a) -> a.length
fetch = (a,i) -> a[i]
konkatenera = (a,b) -> a.concat b
sortera = (a) -> a.sort()
första = (a,n) -> a[..n-1]
mitti = (a,i,j) -> a[i..j]
sista = (a,n) -> a[-n..]
"""
			c:
				"[1,2].concat [3,4]" : [1,2,3,4]
				"[2,3,4,5].length" : 4
				"[11,22,33,44][2]" : 33
				"[11,22,33,44][..2]" : [11,22,33]
				"[11,22,33,44][1..]" : [22,33,44]
				"[11,22,33,44][1..2]" : [22,33]
				"[4,2,3,1].sort()" : [1,2,3,4]
				"[4,2,3,1].sort().reverse()" : [4,3,2,1]
				"a" : [1,2,3]
				"b" : [4,5,6]
				"c" : [5,4,1,2,9,3,7]
				"d" : [11,12,13,14,15]
				"antal a" : 3
				"antal c" : 7
				"fetch b,0" : 4
				"fetch b,2" : 6
				"konkatenera a,b" : [1,2,3,4,5,6]
				"sortera c" : [1,2,3,4,5,7,9]
				"första d,3" : [11,12,13]
				"mitti d,1,2" : [12,13]
				"sista d,4" : [12,13,14,15]

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
				"Math.round(3.1415)" : 3
				"Math.round(3.1415 * 10)/10" : 3.1
				"gear([43,53],[13,21])" : [[2.05,43,21],[2.52,53,21],[3.31,43,13],[4.08,53,13]]
				"gear([43,53],[13,15,17,19,21])" : [[2.05,43,21],[2.26,43,19],[2.52,53,21],[2.53,43,17],[2.79,53,19],[2.87,43,15],[3.12,53,17],[3.31,43,13],[3.53,53,15],[4.08,53,13]]

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
				"'a b c'.split ' '" : ['a','b','c']
				'1+2' : 3
				"'1'+'2'" : '12'
				"1+'2'" : '12'
				"'1'+2" : '12'
				"parseInt '3'" : 3
				"parseFloat '3.14'" : 3.14
				"calc '2'" : 2
				"calc '2 3'" : 3
				"calc '2 3 +'" : 5
				"calc '2 3 *'" : 6
				"calc '2 3 4 * +'" : 14

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
# LOC:8 length [] .. + indexOf split join for in
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
				'"Javascript".length' : 10
				'"Javascript".indexOf "a"' : 1
				'"1,2,3".split ","' : ["1","2","3"]
				'["1","2","3"].join " "' : "1 2 3"
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

		Palindrom :
			b : """
			# LOC:5 for in + ''
			# Se till att ha gjort ett antal for loopar i p5Dojo före denna uppgift.

			palindrom = (word) -> null
			"""
			a: """
palindrom = (word) -> 
	res = ''
	for letter in word
		res = letter + res
	res == word
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
			# LOC:1 map

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
			# LOC:1 map

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
				"parseInt '1'" : 1
				"[1,2,3].reverse()" : [3,2,1]
				"[1,2,3].length" : 3
				"Math.floor 3.14" : 3
				"[11,22,33].slice(1)" : [22,33]
				"[11,22,33].slice(1,2)" : [22]
				"[11,22,33].slice()" : [11,22,33]
				"12345678901234567890 + 1" : 12345678901234567000
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

		PokerHand :
			b: """
# LOC:41 class constructor new _.sortBy _.flatten _.isEqual _.without  
#        split for in range indexOf push unshift reverse and not if then keys length

# https://sv.wikipedia.org/wiki/Pokerhand

# 9	Färgstege (straight flush)
# 8	Fyrtal (four of a kind)
# 7	Kåk (full house)
# 6	Färg (flush)
# 5	Stege (straight)
# 4	Triss (three of a kind)
# 3	Två par (two pairs)
# 2	Par (pair)
# 1	Högt kort (high card)

# Ingen färg är bättre än någon annan färg. Vissa händer är värda lika mycket.

class Hand
	constructor : (s) -> @separator = []
	compare : (other) -> -2

"""
			a: """
class Hand
	constructor : (s) ->
		@colorcount = {} 
		@valuecount = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
		@value = []
		@separator = []
		for card in s.split " "
			@colorcount[card[0..1]] = true
			iValue = "  23456789TJQKA".indexOf card[2]
			@valuecount[iValue] += 1	
			@value.push iValue	
		for v,i in @valuecount 
			if v > 0 then @separator.push [v,i]
		@valuecount = @sortera _.without @valuecount, 0 
		@value = @sortera @value
		@separator = _.sortBy @separator, (list) -> -1000*list[0]-list[1] # pga att js sorterar listor alfabetiskt. t ex [11] < [2].
		@separator = _.flatten @separator

		# Specialbehandling av A5432 eftersom esset räknas som 14.
		if _.isEqual @separator,[1, 14, 1, 5, 1, 4, 1, 3, 1,  2]
			@separator =          [1,  5, 1, 4, 1, 3, 1, 2, 1, 14]
		@separator.unshift @calc()

	compare : (other) -> 
		for i in range @separator.length
			if @separator[i] > other.separator[i] then return -1
			if @separator[i] < other.separator[i] then return 1
		0	

	calc : ->
		if @stege() and @flush() then return 9
		if _.isEqual(@valuecount,[1,4]) then return 8
		if _.isEqual(@valuecount,[2,3]) then return 7
		if @flush() then return 6
		if @stege() then return 5
		if _.isEqual(@valuecount,[1,1,3]) then return 4
		if _.isEqual(@valuecount,[1,2,2]) then return 3
		if _.isEqual(@valuecount,[1,1,1,2]) then return 2
		1

	sortera : (arr) -> _.sortBy arr 
	flush : -> Object.keys(@colorcount).length==1
	stege : ->
		if not _.isEqual(@valuecount, [1,1,1,1,1]) then return false
		if @value[0] + 4 == @value[4] then return true
		_.isEqual @value, [2,3,4,5,14]

"""
			c:
				'[1,2,3] == [1,2,3]' : false
				'_.isEqual [1,2,3], [1,2,3]' : true
				'_.isEqual [1,2,3], [1,2,4]' : false
				'_.flatten [1,[2,1],3]' : [1,2,1,3]
				'_.without [1,2,1,3], 1' : [2,3]
				'_.sortBy ["per", "anna", "bo"]' : ["anna","bo","per"]
				'_.sortBy ["per", "anna", "bo"], (w) -> w.length' : ["bo","per","anna"]

				'(new Hand "spA sp2 sp3 sp4 sp5").separator': [9,1,5,1,4,1,3,1,2,1,14] 
				'(new Hand "ru7 sp7 hj7 kl7 spJ").separator': [8,4,7,1,11]
				'(new Hand "ru8 sp8 hj8 kl9 sp9").separator': [7,3,8,2,9]
				'(new Hand "ru7 ru3 ru5 ru9 ruK").separator': [6,1,13,1,9,1,7,1,5,1,3]
				'(new Hand "ru7 hj8 ru9 hj5 ru6").separator': [5,1,9,1,8,1,7,1,6,1,5]
				'(new Hand "ru7 hj8 ru8 kl8 ruJ").separator': [4,3,8,1,11,1,7]
				'(new Hand "ru7 hj7 ru8 kl8 ruJ").separator': [3,2,8,2,7,1,11]
				'(new Hand "sp7 hj3 ru3 kl4 spA").separator': [2,2,3,1,14,1,7,1,4]
				'(new Hand "sp7 hj3 ru2 kl4 spA").separator': [1,1,14,1,7,1,4,1,3,1,2]

				'(new Hand "spA sp2 sp3 sp4 sp5").compare new Hand "ruA ru2 ru3 ru4 ru5"': 0
				'(new Hand "ru7 sp7 hj7 kl7 spJ").compare new Hand "ru6 sp5 hj6 kl6 spQ"': -1
				'(new Hand "ru8 sp8 hj8 kl9 sp9").compare new Hand "ru6 sp6 hj6 ru9 hj9"': -1
				'(new Hand "ru7 ru3 ru5 ru9 ruK").compare new Hand "hj7 hj3 hj5 hj9 hjK"': 0
				'(new Hand "ru7 hj8 ru9 hj5 ru6").compare new Hand "hj7 ru8 kl9 hjT sp6"': 1
				'(new Hand "ru7 hj8 ru8 kl8 ruJ").compare new Hand "kl7 hj9 ru9 kl9 ruQ"': 1
				'(new Hand "ru7 hj7 ru8 kl8 ruJ").compare new Hand "sp7 kl7 sp8 hj8 ruT"': -1
				'(new Hand "hj7 kl3 sp3 kl4 hjA").compare new Hand "sp7 hj3 ru3 klK spA"': 1
				'(new Hand "sp7 hj3 ru2 kl4 spA").compare new Hand "hj7 ru3 ru5 sp4 hjA"': 1

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

a = new Polynom [5,4,3]
b = new Polynom [4,3]
c = new Polynom [0,0,1]
d = new Polynom [3,2]
e = new Polynom [5,0,-1]
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
				"a.lst" : [5,4,3]
				"b.lst" : [4,3]
				"a.to_s()" : "3*x^2+4*x+5"
				"c.to_s()" : "x^2"
				"a.add(b).to_s()" : "3*x^2+7*x+9"
				"a.mul(b).to_s()" : "9*x^3+24*x^2+31*x+20"
				"a.value(2)" : 25
				"a.power(2).lst" : [25,40,46,24,9]
				"b.power(3).lst" : [64,144,108,27] 
				"a.diff().lst" : [4,6]
				"a.integ().lst" : [0,5,2,1]
				"c.integ().to_s()" : "0.3333333333333333*x^3"
				"c.integ().value(3)" : 9
				"d.compose(d).lst" : [9,4] 
				"d.compose(e).lst" : [13,0,-2] 
				"e.compose(d).lst" : [-4,-12,-4]
				"e.compose(e).lst" : [-20,0,10,0,-1]


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
# LOC:4 _.isEqual _.isNumber _.head _.tail

summa = (tree) -> 0
"""
			a: """
summa = (tree) -> 
	return 0 if _.isEqual tree,[]
	return tree if _.isNumber tree 
	summa(_.head tree) + summa _.tail tree 
"""
			c:
				"_.isNumber '12'" : false 
				"_.isNumber 12" : true 
				"_.isNumber [12]" : false 
				"_.head [11,22,33]" : 11
				"_.tail [11,22,33]" : [22,33]

				"summa [1,2,3,4]" : 10
				"summa [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]]" : 161

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
				"[1,-2,0,3,-4].filter (x) -> x > 0" : [1,3]
				"g djur,'hund'" : [{namn:'Karo',art:'hund'},{namn:'Rocky',art:'hund'}]
				"g djur,'fisk'" : [{namn:'Albert',art:'fisk'},{namn:'Herbert',art:'fisk'}]
				"g djur,'kanin'" : [{namn:'Fluffy',art:'kanin'}]
				"g djur,'katt'" : [{namn:'Trixie',art:'katt'}]
				"g djur,'papegoja'" : []

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
				"(2**i for i in range 5)" : [1,2,4,8,16]
				"namn djur" : ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']

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
				"ica.reduce ((sum, vara) -> sum + vara.antal), 0" : 12
				"konsum.reduce ((sum, vara) -> sum + vara.pris), 0" : 290
				"summa ica" : 983
				"summa konsum" : 290

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
				"sortera djur,(d)->d.length" : ["Karo","Rocky","Fluffy","Albert","Trixie","Herbert"]
				"sortera djur" : ["Albert","Fluffy","Herbert","Karo","Rocky","Trixie"]

		groupBy: 
			b: """
# LOC:1 groupBy

djur = ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']

gruppera = (djur,f) -> {}
"""
			a: """
gruppera = (djur,f) -> _.groupBy djur, f
"""
			c:  
				"gruppera djur,(d) -> d.length" : {"4":["Karo"],"5":["Rocky"],"6":["Fluffy","Albert","Trixie"],"7":["Herbert"]}
				"gruppera djur,(d) -> _.last(d)" : {"y":["Fluffy","Rocky"],"o":["Karo"],"t":["Albert","Herbert"],"e":["Trixie"]}

		split: 
			b: """
# LOC:1 split for in _.object

parametrar = (url) -> {}
"""
			a: """
parametrar = (url) -> _.object(f.split '=' for f in url.split('?')[1].split('&'))
"""
			c:  
				"_.object ['moe', 'larry', 'curly'], [30, 40, 50]" : {moe: 30, larry: 40, curly: 50}
				"_.object [['moe', 30], ['larry', 40], ['curly', 50]]" : {moe: 30, larry: 40, curly: 50}
				"parametrar 'dn.se?x=0&y=1'" : {x:'0', y:'1'}
				"parametrar 'svd.se?page=7'" : {page : '7'}
				"parametrar 'aftonbladet.se?article=123456&date=2016-12-01'" : {article:'123456', date:'2016-12-01'}
				"parametrar 'expressen.se?city=Stockholm'" : {city : 'Stockholm'}
				"parametrar 'http://stackoverflow.com/search?q=coffeescript'" : {q : 'coffeescript'}
