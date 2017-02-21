# a : facit, might be any language. Not used by p5Dojo.
# b : comment line. LOC and keyword clues
# c : call in Coffeescript syntax

data = 
	
	"A1: Heltal" : 
		Operator1 :  
			b: """
			# LOC:1
			# Try to implement the yellow function f.

			# The YELLOW column contains the INPUT.
			# The GREEN column contains the expected OUTPUT.
			# The RED column contains the OUTPUT returned by your code.
			# Make the RED column match the GREEN column.
			
			# Change 0 to 2 and watch the first RED cell turn GREEN!
			# Change 0 to 3 and watch the second RED cell turn GREEN!
			# Change 0 to x and watch both RED cells turn GREEN!
			
			# Then continue by clicking Operator2

			f = (x) -> 0
			"""
			a: "f = (x) -> x"
			c: 
				"f 2" : 2
				"f 3" : 3 

		Operator2: 
			b: """
			# LOC:1 + - * / %
			f = (x) ->
			"""
			a: "f = (x) -> x+1"
			c: 
				"f 7" : 8
				"f 8" : 9 

		Operator3: 
			b: """
			# LOC:1 + - * / %
			f = (x) ->
			"""
			a: "f = (x) -> 2*x"
			c: 
				"f 5" : 10
				"f 6" : 12 

		Operator4: 
			b: """
			# LOC:1 + - * / %
			f = (x) ->
			"""
			a: "f = (x) -> x*x"
			c: 
				"f 5" : 25
				"f 6" : 36

		Operator5: 
			b: """
			# LOC:1 + - * / %
			f = (x) ->
			"""
			a: "f = (x) -> -x"
			c: 
				"f -4" : 4
				"f 3" : -3

		Operator6: 
			b: """
			# LOC:1 + - * / %
			f = (x) ->
			"""
			a: "f = (x) -> x-2"
			c: 
				"f 7" : 5
				"f 17" : 15

		Operator7: 
			b: """
			# LOC:1 + - * / %
			f = (x) ->
			"""
			a: "f = (x) -> x/2"
			c: 
				"f 8" : 4
				"f 6" : 3

		Operator8: 
			b: """
			# LOC:1 + - * / %
			"""
			a: "f = (x) -> x%2"
			c: 
				"f 7" : 1
				"f 8" : 0
				"f 10" : 0
				"f 11" : 1
	
		Operator9: 
			b: """
			# LOC:1 + - * / %
			g = (a,b) ->
			"""
			a: "g = (a,b) -> a*b"
			c: 
				"g 3,4" : 12
				"g 4,6" : 24

		Operator10: 
			b: """
			# LOC:1 + - * / %
			"""
			a: "g = (a,b) -> a+b"
			c: 
				"g 3,4" : 7
				"g 4,6" : 10

		Operator11: 
			b: """
			# LOC:1 + - * / %
			"""
			a: "g = (a,b) -> b-a"
			c: 
				"g 3,4" : 1
				"g 4,6" : 2

		Operator12: 
			b: """
			# LOC:1 + - * / %
			"""
			a: "g = (a,b) -> a/b"
			c: 
				"g 8,4" : 2
				"g 12,3" : 4

		Operator13: 
			b: """
			# LOC:1 + - * / %
			"""
			a: "g = (a,b) -> a%b"
			c:
				"g 8,4" : 0
				"g 9,4" : 1
				"g 10,4" : 2
				"g 11,4" : 3
	
	"A2: Strängar" :

		Palindrom :
			b : """
			# LOC:5 for in + ''
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
			rs = (word) -> 
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

	"A3: Listor" :

		Introduktion :
			b:"""
# LOC:11 length push concat pop sort .. []
a = [4,5,6]
b = []
d = [4,5,6]
e = [5,4,1,2,9,3,7]
f = [5,4,1,2,9,3,7]
g = [11,12,13,14,15]

antal = (a) -> 
append = (a,n) -> 
konkatenera = (a,b) -> 
fetch = (a,i) -> 
tabortsista = (a) -> 
sortera = (a) -> 
första = (a,n) -> 
mitti = (a,i,j) -> 
sista = (a,n) -> 

			"""
			a:"""
a = [4,5,6]
b = []
d = [4,5,6]
e = [5,4,1,2,9,3,7]
f = [5,4,1,2,9,3,7]
g = [11,12,13,14,15]

antal = (a) -> a.length
append = (a,n) -> 
	a.push n
	a
konkatenera = (a,b) -> a.concat b
fetch = (a,i) -> a[i]
tabortsista = (a) -> [a.pop(),a]
sortera = (a) -> a.sort()
första = (a,n) -> a[..n-1]
mitti = (a,i,j) -> a[i..j]
sista = (a,n) -> a[-n..]

"""
			c:
				"a" : [4,5,6]
				"antal a" : 3
				"fetch a,0" : 4
				"fetch a,2" : 6
				"append b,7" : [7]
				"konkatenera a,a" : [4,5,6,4,5,6]
				"d" : [4,5,6]
				"tabortsista d" : [6,[4,5]]
				"e" : [5,4,1,2,9,3,7]
				"sortera f" : [1,2,3,4,5,7,9]
				"g" : [11,12,13,14,15]
				"första g,3" : [11,12,13]
				"mitti g,1,2" : [12,13]
				"sista g,4" : [12,13,14,15]

		Växelcykel :
			b: """
# LOC:4 [] for in push sort - /
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

	"A4: Dictionary" :
		"Boys and Girls" :
			b : """
#LOC:7 {} [] for in length + /
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

	"A5: Interpolation" : 

		linearequation1: 
			a: "f = (x) -> 2 * x"
			b: "# LOC:1 *\nf = (x) -> 0"
			c:  
				"f 2" : 4
				"f 3" : 6

		linearequation2: 
			a: "f = (x) -> 3 + 2 * x"
			b: "# LOC:1 * +\nf = (x) -> 0"
			c: 
				"f 2" : 7
				"f 3" : 9

		lerp: 
			a: "lerp = (y1,y2,x) -> y1 + (y2-y1) * x"
			b: "# LOC:1 * + -\nlerp = (y1,y2,x) -> 0"
			c:  
				"lerp 10,16,-1" : 4
				"lerp 10,16,0" : 10
				"lerp 10,16,0.5" : 13
				"lerp 10,16,1" : 16
				"lerp 10,16,2" : 22
		
		map:  
			a: "map = (x,x1,x2,y1,y2) -> y1 + (y2-y1) * (x-x1)/(x2-x1)"
			b: "# LOC:1 * + - /\nmap = (x,x1,x2,y1,y2) -> 0"
			c:  
				"map 0,1,3,20,40" : 10
				"map 1,1,3,20,40" : 20
				"map 2,1,3,20,40" : 30
				"map 3,1,3,20,40" : 40
				"map 75,50,100,0,1" : 0.5
				"map 16,0,40,0,200" : 80

		Hour2Degree:  
			a: "h2d = (x) -> map(15-x,0,12,0,360) % 360"
			b: "# LOC:1 map\nh2d = (x) -> 0"
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
			a: "h2r = (x) -> (map 15-x,0,12,0,2*Math.PI) % (2*Math.PI)"
			b: "# LOC:1 map\nh2r = (x) -> 0"
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

	"A6: class" :
		"Girls and Boys" :
			b : """
#LOC:8 class constructor new [] for in length + /
class Kid
	constructor : (@name,@age) ->

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

	"A7: class Bignum" :
		bignum :
			b:"""
# LOC:22 class constructor new parseInt reverse length push floor slice unshift join for if
class Bignum
	constructor : (s) ->
	add : (other) ->
	mul : (other) ->
	to_s : () -> 

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
	
	to_s : () -> @list.slice().reverse().join("")

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


	"A8: class Complex" : 
		complex1: 
			b: """
# LOC:31 class constructor new -> if + * == > <
class Complex
	constructor : (@x,@y) ->
	add : (other) ->
	mul : (other) ->
	toString : ->
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
	toString : ->
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
				"new Complex(-1,0).toString()" :"-1"
				"new Complex(-1,-1).toString()" : "-1-i"
				"new Complex(0,-1).toString()" : "-i"
				"new Complex(0,0).toString()" : "0"
				"new Complex(0,1).toString()" : "i"
				"new Complex(1,-2).toString()" : "1-2i"
				"new Complex(1,-1).toString()" : "1-i"
				"new Complex(1,0).toString()" : "1"
				"new Complex(1,1).toString()" : "1+i"
				"new Complex(1,2).toString()" : "1+2i"
				"new Complex(1,2).add(new Complex(1,-1)).toString()" : "2+i"
				"new Complex(1,2).mul(new Complex(1,-1)).toString()" : "3+i"

	
		split1: 
			a: "g = (h) -> _.object(f.split '=' for f in h.split('?')[1].split('&'))"
			b: "# LOC:1 split for in _.object"
			c:  
				"g 'dn.se?x=0&y=1'" : {x:'0', y:'1'}
				"g 'svd.se?page=7'" : {page : '7'}
				"g 'aftonbladet.se?article=123456&date=2016-12-01'" : {article:'123456', date:'2016-12-01'}
				"g 'expressen.se?city=Stockholm'" : {city : 'Stockholm'}
				"g 'http://stackoverflow.com/search?q=coffeescript'" : {q : 'coffeescript'}


	"A9: class Polynom" :

		constructor :
			b: """
# LOC:2 class constructor new
class Polynom
	constructor : (lst) ->
"""
			a: ""
			c:
				"(new Polynom [5,4,3]).lst" : [5,4,3]
				"(new Polynom [1,0,2,3]).lst" : [1,0,2,3]

		to_s:
			b: ""
			a: ""
			c:
				"(new Polynom [5,4,3]).to_s()" : "3*x^2+4*x+5"
				"(new Polynom [0,0,1]).to_s()" : "x^2"

		add:
			b: ""
			a: ""
			c: "(new Polynom [5,4,3]).add(new Polynom [4,3]).to_s()" : "3*x^2+4*x+5"

		mul:
			b: ""
			a: ""
			c: "(new Polynom [5,4,3]).mul(new Polynom [4,3]).to_s()" : "9*x^3+24*x^2+31*x+20"
	
		value:
			b: ""
			a: ""
			c: "(new Polynom [5,4,3]).value(2)" : 25

		diff:
			b: ""
			a: ""
			c: "(new Polynom [5,4,3]).diff().lst" : [4,6]

		integ:
			b: ""
			a: ""
			c: "(new Polynom [5,4,3]).integ().lst" : [0,5,2,1]

		"integ to_s":
			b: ""
			a: ""
			c: "(new Polynom [0,0,1]).integ().to_s()" : "0.3333333333333333*x^3"

		"integ value":
			b: ""
			a: ""
			c: "(new Polynom [0,0,1]).integ().value(3)" : 9

		power2:
			b: ""
			a: ""
			c: "(new Polynom [5,4,3]).power(2).lst" : [25,40,46,24,9]

		power3:
			b: ""
			a: ""
			c: "(new Polynom [4,3]).power(3).lst" : [64,144,108,27] 

		compose1:
			b: ""
			a: ""
			c: "(new Polynom [3,2]).compose(new Polynom [3,2]).lst" : [9,4] 

		compose2:
			b: ""
			a: ""
			c: "(new Polynom [3,2]).compose(new Polynom [5,0,-1]).lst" : [13,0,-2] 

		compose3:
			b: ""
			a: ""
			c: "(new Polynom [5,0,-1]).compose(new Polynom [3,2]).lst" : [-4,-12,-4]

		compose4:
			b: ""
			a: ""
			c: "(new Polynom [5,0,-1]).compose(new Polynom [5,0,-1]).lst" : [-20,0,10,0,-1]

	"A10: Advanced" :

		path: 
			b: "# concat\ntree = {3:0, 4:8, 5:3, 6:3, 10:5, 7:5, 12:6, 8:6, 20:10, 9:7, 24:12, 14:12}\n"
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

	# "A5: filter map reduce" : 
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

	#Underscore: 
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

