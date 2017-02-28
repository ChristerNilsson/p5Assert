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
			
			f = (x) ->
			"""
			a: "f = (x) -> x+1"
			c: 
				"f 7" : 8
				"f 8" : 9 

		Operator3: 
			b: """
			# + - * / %

			f = (x) ->
			"""
			a: "f = (x) -> 2*x"
			c: 
				"f 5" : 10
				"f 6" : 12 

		Operator4: 
			b: """
			# + - * / %

			f = (x) ->
			"""
			a: "f = (x) -> x*x"
			c: 
				"f 5" : 25
				"f 6" : 36

		Operator5: 
			b: """
			# + - * / %

			f = (x) ->
			"""
			a: "f = (x) -> -x"
			c: 
				"f -4" : 4
				"f 3" : -3

		Operator6: 
			b: """
			# + - * / %

			f = (x) ->
			"""
			a: "f = (x) -> x-2"
			c: 
				"f 7" : 5
				"f 17" : 15

		Operator7: 
			b: """
			# + - * / %

			f = (x) ->
			"""
			a: "f = (x) -> x/2"
			c: 
				"f 8" : 4
				"f 6" : 3

		Operator8: 
			b: """
			# + - * / %

			f = (x) ->			
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

			f = (x) ->			
			"""
			a: "f = (x) -> x == 2"
			c:
				"f 1" : false
				"f 2" : true
				"f 3" : false
				"f 4" : false

		Operator10: 
			b: """
			# == < > !=

			f = (x) ->			
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

			f = (x) ->			
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

			f = (x) ->			
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

			g = (a,b) ->
			"""
			a: "g = (a,b) -> a*b"
			c: 
				"g 3,4" : 12
				"g 4,6" : 24

		Operator2: 
			b: """
			# + - * / %
			"""
			a: "g = (a,b) -> a+b"
			c: 
				"g 3,4" : 7
				"g 4,6" : 10

		Operator3: 
			b: """
			# + - * / %
			"""
			a: "g = (a,b) -> b-a"
			c: 
				"g 3,4" : 1
				"g 4,6" : 2

		Operator4: 
			b: """
			# + - * / %
			"""
			a: "g = (a,b) -> a/b"
			c: 
				"g 8,4" : 2
				"g 12,3" : 4

		Operator5: 
			b: """
			# + - * / %
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

f = (n) -> 
g = (a,b) ->
h = (a,b,n) ->
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

		"lerp":
			b:"""
# LOC:1 lerp
# Försök lösa uppgiften både med och utan lerp

f = (a,b,i) ->
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

		"for":
			b:"""
# LOC:1 for in range lerp
# Försök lösa uppgiften både med och utan lerp

f = (a,b,n) -> i for i in range n
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

	"A3: [ ]" :

		Introduktion :
			b:"""
# LOC:11 length push concat pop sort .. []

a = [1,2,3]
b = [4,5,6]
c = [5,4,1,2,9,3,7]
d = [11,12,13,14,15]

antal = (a) -> 
fetch = (a,i) -> 
konkatenera = (a,b) -> 
sortera = (a) -> 
första = (a,n) -> 
mitti = (a,i,j) -> 
sista = (a,n) -> 
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

gear = (big, small) ->
"""
			a: """
gear = (big, small) ->
	res = []
	res.push [b,s] for s in small for b in big
	res.sort ([b1,s1],[b2,s2]) -> b1/s1 - b2/s2 
"""	
			c:	
				"gear([40,50],[13,21])" : [[40,21],[50,21],[40,13],[50,13]]
				"gear([40,50],[13,15,17,19,21])" : [[40,21],[40,19],[40,17],[50,21],[50,19],[40,15],[50,17],[40,13],[50,15],[50,13]]

		Kalkylator :
			b: """
# LOC:10 [] for in split == push pop if else parseInt

calc = (command) ->
"""
			a: """
calc = (command) ->
	stack = []
	for cmd in command.split(' ')
		if cmd == '+'
			stack.push(stack.pop() + stack.pop())
		else if cmd == '*' 
			stack.push(stack.pop() * stack.pop())
		else
			stack.push parseInt cmd
	stack.pop()		
"""
			c:
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

a = "Coffee"
b = "script"

antal = (s) ->
tecken = (s,i) ->
mitti = (s,i,j) ->
konkatenera = (s,t) ->
leta = (s,t) ->
splittra = (s,avgr) -> 
hopslagning = (a,avgr='') -> 
dubbla = (s) ->
			"""
			a:"""
a = "Coffee"
b = "script"

antal = (s) -> s.length
tecken = (s,i) -> s[i]
mitti = (s,i,j) -> s[i..j]
konkatenera = (s,t) -> s + t
leta = (s,t) -> s.indexOf t
splittra = (s,avgr) -> s.split avgr
hopslagning = (a,avgr='') -> a.join(avgr)
dubbla = (s) -> slåihop (tecken + tecken for tecken in s)
			"""
			c:
				"antal a" : 6
				"tecken a,1" : 'o'
				"mitti a,1,3" : 'off'
				"mitti a,3,5" : 'fee'
				"konkatenera a,b" : 'Coffeescript' 
				"leta a,'e'" : 4
				"leta a,'x'" : -1
				"splittra '2 3 +',' '" : ['2', '3', '+'] 
				"hopslagning ['2', '3', '+'], '|'" : "2|3|+"
				"dubbla b" : 'ssccrriipptt'

		Palindrom :
			b : """
			# LOC:5 for in + ''
			# Se till att ha gjort ett antal for loopar i p5Dojo före denna uppgift.

			palindrom = (word) -> 
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
			# LOC:5 for in if then else + ''

			rs = (word,extra='o') -> 
			"""
			a: """
rs = (word,extra='o') -> 
	res = ''
	for letter in word
		res += if letter in 'aeiouy åäö' then letter else letter + extra + letter
	res
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
	scale : -> 
	rotate : -> 
	mirror : -> 

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
	constructor : (s) ->
	to_s : () -> 
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
	add : (other) ->
	mul : (other) ->
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
# LOC:49 class constructor new split for in indexOf push typeof and reverse if then
#	       _.sortBy _.flatten _.isEqual _.without  

# https://sv.wikipedia.org/wiki/Pokerhand

# 1	Färgstege (straight flush)
# 2	Fyrtal (four of a kind)
# 3	Kåk (full house)
# 4	Färg (flush)
# 5	Stege (straight)
# 6	Triss (three of a kind)
# 7	Två par (two pairs)
# 8	Par (pair)
# 9	Högt kort (high card)

# Ingen färg är bättre än någon annan färg. Vissa händer är värda lika mycket.

class Hand
	constructor : (s) -> @score = 0
	compare : (other) -> -2

"""
			a: """
class Hand
	constructor : (s) ->
		arr = s.split " "
		@färg = [0,0,0,0]
		@valör = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
		@value = []
		@separator = []
		for card in arr
			findex = "sphjrukl".indexOf(card[0..1])/2
			@färg[findex] += 1
			vindex = "  23456789TJQKA".indexOf card[2]
			@valör[vindex] += 1	
			@value.push vindex	
		for v,i in @valör 
			if v > 0 then @separator.push [v,i]
		@färg = _.without @färg, 0 
		@valör = _.without @valör, 0 
		@färg = @sortera @färg
		@valör = @sortera @valör
		@value = @sortera @value
		@separator = _.sortBy @separator, (list) -> 1000*list[0]+list[1] # pga js sortera listor alfabetiskt
		@separator.reverse()
		@separator = _.flatten @separator

		# Specialbehandling av A2345 eftersom esset räknas som 14.
		if _.isEqual(@separator,[1, 14, 1, 5, 1, 4, 1, 3, 1,  2])
			@separator =          [1,  5, 1, 4, 1, 3, 1, 2, 1, 14]
		@score = @calc()

	compare : (other) -> 
		if @score < other.score then return -1
		if @score > other.score then return 1
		for i in range @separator.length
			if @separator[i] > other.separator[i] then return -1
			if @separator[i] < other.separator[i] then return 1
		0	

	sortera : (arr) -> _.sortBy arr 

	calc : ->
		if @stege() and @isFärg() then return 1
		if _.isEqual(@valör,[1,4]) then return 2
		if _.isEqual(@valör,[2,3]) then return 3
		if @isFärg() then return 4
		if @stege() then return 5
		if _.isEqual(@valör,[1,1,3]) then return 6
		if _.isEqual(@valör,[1,2,2]) then return 7
		if _.isEqual(@valör,[1,1,1,2]) then return 8
		9

	stege : () ->
		if not _.isEqual(@valör, [1,1,1,1,1]) then return false
		if @value[0] + 4 == @value[4] then return true
		_.isEqual(@value, [2,3,4,5,14])

	isFärg : () -> _.isEqual(@färg, [5])

"""
			c:
				'(new Hand "spA sp2 sp3 sp4 sp5").score': 1
				'(new Hand "ru7 sp7 hj7 kl7 spJ").score': 2
				'(new Hand "ru8 sp8 hj8 kl9 sp9").score': 3
				'(new Hand "ru7 ru3 ru5 ru9 ruK").score': 4
				'(new Hand "ru7 hj8 ru9 hj5 ru6").score': 5
				'(new Hand "ru7 hj8 ru8 kl8 ruJ").score': 6
				'(new Hand "ru7 hj7 ru8 kl8 ruJ").score': 7
				'(new Hand "sp7 hj3 ru3 kl4 spA").score': 8
				'(new Hand "sp7 hj3 ru2 kl4 spA").score': 9

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
	constructor : (lst) ->
	to_s : ->
	add : (other) ->
	mul : (other) ->
	power : (n) ->
	value : (x) ->
	diff : ->
	integ : ->
	compose : (other)	->

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
			# concat

			tree = {3:0, 4:8, 5:3, 6:3, 10:5, 7:5, 12:6, 8:6, 20:10, 9:7, 24:12, 14:12}
			"""
			a: "path = (tree,x) -> if x==0 then return [] else path(tree,tree[x]).concat([x])"
			c:  
				"path tree, 4" : [3,6,8,4]
				"path tree, 20" : [3,5,10,20]
				"path tree, 9" : [3,5,7,9]

		summa: 
			b: """
# Använd några av .reduce .isEqual .isNumber .head eller .tail 

tree = [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]]
"""
			a: """
summa = (tree) -> 
	return 0 if _.isEqual tree,[]
	return tree if _.isNumber tree 
	s = summa _.head tree
	s + summa _.tail tree 
"""
			c: "summa tree" : 161

		filter: 
			b: """
# Använd for loop eller filter

djur = [
	{namn:'Fluffy',art:'kanin'}
	{namn:'Karo',art:'hund'}
	{namn:'Rocky',art:'hund'}
	{namn:'Albert',art:'fisk'}
	{namn:'Trixie',art:'katt'}
	{namn:'Herbert',art:'fisk'}
]
"""
			a: """
arHund = (d) -> d.art == 'hund'
arFisk = (d) -> d.art == 'fisk'
g = (djur,f) -> djur.filter f
"""
			c:  
				"g djur,arHund" : [{namn:'Karo',art:'hund'},{namn:'Rocky',art:'hund'}]
				"g djur,arFisk" : [{namn:'Albert',art:'fisk'},{namn:'Herbert',art:'fisk'}]

		map: 
			b: """
# Använd for loop eller map eller Coffescript comprehension

djur = [
	{namn:'Fluffy',art:'kanin'}
	{namn:'Karo',art:'hund'}
	{namn:'Rocky',art:'hund'}
	{namn:'Albert',art:'fisk'}
	{namn:'Trixie',art:'katt'}
	{namn:'Herbert',art:'fisk'}
]
"""
			a: """
namn = (djur) -> djur.map (d) -> d.namn
namn = (djur) -> (d.namn for d in djur)
"""
			c:  
				"namn djur" : ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']

		reduce: 
			b: """
# Använd for loop eller reduce

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
"""
			a: """
summa = (varor) -> varor.reduce ((sum, vara) -> sum + vara.pris * vara.antal), 0
"""
			c:  
				"summa ica" : 983
				"summa konsum" : 290

		sortBy: 
			b: """
# sortBy

djur = ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']
"""
			a: """
g = (djur,f) -> _.sortBy djur, f
			"""
			c:  
				"g(djur,(d)->d.length)" : ["Karo","Rocky","Fluffy","Albert","Trixie","Herbert"]
				"g(djur,(d)->d)" : ["Albert","Fluffy","Herbert","Karo","Rocky","Trixie"]

		groupBy: 
			b: """
# groupBy

djur = ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']
"""
			a: """
g = (djur,f) -> _.groupBy djur, f
"""
			c:  
				"g(djur,(d) -> d.length)" : {"4":["Karo"],"5":["Rocky"],"6":["Fluffy","Albert","Trixie"],"7":["Herbert"]}
				"g(djur,(d) -> _.last(d))" : {"y":["Fluffy","Rocky"],"o":["Karo"],"t":["Albert","Herbert"],"e":["Trixie"]}

		split: 
			b: """
			# LOC:1 split for in _.object

			g = (h) ->
			"""
			a: "g = (h) -> _.object(f.split '=' for f in h.split('?')[1].split('&'))"
			c:  
				"g 'dn.se?x=0&y=1'" : {x:'0', y:'1'}
				"g 'svd.se?page=7'" : {page : '7'}
				"g 'aftonbladet.se?article=123456&date=2016-12-01'" : {article:'123456', date:'2016-12-01'}
				"g 'expressen.se?city=Stockholm'" : {city : 'Stockholm'}
				"g 'http://stackoverflow.com/search?q=coffeescript'" : {q : 'coffeescript'}
