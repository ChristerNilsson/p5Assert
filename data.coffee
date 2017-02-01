# a : facit, might be any language. Not used by p5Dojo.
# b : comment line. LOC and keyword clues
# c : call in Javascript syntax
# Observe:	local variables a,b and c must be declared var. e.g. r,g,b
# Eventually, skip a,b and c and use a list instead

data = 
	
	Assert1: 
		Operator1: 
			a:"function f(x) { return x }"
			b:"""
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
			c: 
				"f(2)":2
				"f(3)":3 
		Operator2: 
			a:"function f(x) { return x+1 }"
			b:"# + - * / %\n"
			c: 
				"f(7)":8
				"f(8)":9 
		Operator3: 
			a:"function f(x) { return 2*x }"
			b:"# + - * / %\n"
			c: 
				"f(5)":10
				"f(6)":12 
		Operator4: 
			a:"function f(x) { return x*x }"
			b:"# + - * / %\n"
			c: 
				"f(5)":25
				"f(6)":36
		Operator5: 
			a:"function f(x) { return -x }"
			b:"# + - * / %\n"
			c: 
				"f(-4)":4
				"f(3)":-3
		Operator6: 
			a:"function f(x) { return x-2 }"
			b:"# + - * / %\n" 
			c: 
				"f(7)":5
				"f(17)":15
		Operator7: 
			a: "function f(x) { return x/2 }"
			b: "# + - * / %\n"
			c: 
				"f(8)":4
				"f(6)":3
		Operator8: 
			a:"function f(x) { return x%2 }"
			b:"# + - * / %\n"
			c: 
				"f(7)":1
				"f(8)":0
				"f(10)":0
				"f(11)":1
	
	Assert2: 
		Operator1: 
			a:"function g(a,b) { return a*b }"
			b:"# + - * / %\ng = (a,b) -> 0"
			c: 
				"g(3,4)":12
				"g(4,6)":24
		Operator2: 
			a:"function g(a,b) { return a+b }"
			b:"# + - * / %\n"
			c: 
				"g(3,4)":7
				"g(4,6)":10
		Operator3: 
			a:"function g(a,b) { return b-a }"
			b:"# + - * / %\n"
			c: 
				"g(3,4)":1
				"g(4,6)":2
		Operator4: 
			a:"function g(a,b) { return a/b }"
			b:"# + - * / %\n"
			c: 
				"g(8,4)":2
				"g(12,3)":4
		Operator5: 
			a:"function g(a,b) { return a%b }"
			b:"# + - * / %\n"
			c:
				"g(8,4)":0
				"g(9,4)":1
				"g(10,4)":2
				"g(11,4)":3
	
	Assert3: 
		linearequation1: 
			a:"function f(x) { return 2 * x }"
			b:"# *\nf = (x) -> 0"
			c:  
				"f(2)" : 4
				"f(3)" : 6

		linearequation2: 
			a:"function f(x) { return 3 + 2 * x }"
			b:"# * +\nf = (x) -> 0"
			c: 
				"f(2)" : 7
				"f(3)" : 9

		lerp: 
			a:"function lerp(y1,y2,x) { return y1 + (y2-y1) * x }"
			b:"# * + -\nlerp = (y1,y2,x) -> 0"
			c:  
				"lerp(10,20,-1)" : 0
				"lerp(10,20,0)" : 10
				"lerp(10,20,0.5)" : 15
				"lerp(10,20,1)" : 20
				"lerp(10,20,2)" : 30
		
		map:  
			a:"function map(x,x1,x2,y1,y2) { return y1 + (y2-y1) * (x-x1)/(x2-x1) }"
			b:"# * + - /\nmap = (x,x1,x2,y1,y2) -> 0"
			c:  
				"map(0,1,3,20,40)" : 10
				"map(1,1,3,20,40)" : 20
				"map(2,1,3,20,40)" : 30
				"map(3,1,3,20,40)" : 40
				"map(75,50,100,0,1)" : 0.5
				"map(16,0,40,0,200)" : 80

	Assert4: 
		complex1: 
			a:"""
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
			b:"# LOC:23 class constructor -> if"
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
	
		split1: 
			a:"g = (h) -> _.object(f.split '=' for f in h.split('?')[1].split('&'))"
			b:"# LOC:1 split for in _.object"
			c:  
				"g('dn.se?x=0&y=1')" : {x:'0', y:'1'}
				"g('svd.se?page=7')" : {page : '7'}
				"g('aftonbladet.se?article=123456&date=2016-12-01')" : {article:'123456', date:'2016-12-01'}
				"g('expressen.se?city=Stockholm')" : {city : 'Stockholm'}
				"g('http://stackoverflow.com/search?q=coffeescript')" : {q : 'coffeescript'}

	Assert5: 
		filter: 
			b:"""
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
			a:"""
arHund = (d) -> d.art == 'hund'
arFisk = (d) -> d.art == 'fisk'
g = (djur,f) -> djur.filter f
			"""
			c:  
				"g(djur,arHund)" : [{namn:'Karo',art:'hund'},{namn:'Rocky',art:'hund'}]
				"g(djur,arFisk)" : [{namn:'Albert',art:'fisk'},{namn:'Herbert',art:'fisk'}]

		map: 
			b:"""
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
			a:"""
namn = (djur) -> djur.map (d) -> d.namn
namn = (djur) -> (d.namn for d in djur)
			"""
			c:  
				"namn(djur)" : ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']

		reduce: 
			b:"""
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
			a:"""
summa = (varor) -> varor.reduce ((sum, vara) -> sum + vara.pris * vara.antal), 0
			"""
			c:  
				"summa(ica)" : 983
				"summa(konsum)" : 290

	Underscore: 
		sortBy: 
			b:"""
# sortBy
djur = ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']
"""
			a:"""
g = (djur,f) -> _.sortBy djur, f
			"""
			c:  
				"g(djur,(d)->d.length)" : ["Karo","Rocky","Fluffy","Albert","Trixie","Herbert"]
				"g(djur,(d)->d)" : ["Albert","Fluffy","Herbert","Karo","Rocky","Trixie"]

		groupBy: 
			b:"""
# groupBy
djur = ['Fluffy','Karo','Rocky','Albert','Trixie','Herbert']
"""
			a:"""
g = (djur,f) -> _.groupBy djur, f
			"""
			c:  
				"g(djur,(d) -> d.length)" : {"4":["Karo"],"5":["Rocky"],"6":["Fluffy","Albert","Trixie"],"7":["Herbert"]}
				"g(djur,(d) -> _.last(d))" : {"y":["Fluffy","Rocky"],"o":["Karo"],"t":["Albert","Herbert"],"e":["Trixie"]}

	Advanced: 
		path: 
			b:"# concat\ntree = {3:0, 4:8, 5:3, 6:3, 10:5, 7:5, 12:6, 8:6, 20:10, 9:7, 24:12, 14:12}\n"
			a:"path = (tree,x) -> if x==0 then return [] else path(tree,tree[x]).concat([x])"
			c:  
				"path(tree, 4)" : [3,6,8,4]
				"path(tree, 20)" : [3,5,10,20]
				"path(tree, 9)" : [3,5,7,9]

		summa: 
			b:"""
# Använd några av .reduce .isEqual .isNumber .head eller .tail 
tree = [3, [5,6], [7,8,10,12], [4,9,14,[20,24]], [[12,13],14]]

"""
			a:"""
summa = (tree) -> 
	return 0 if _.isEqual tree,[]
	return tree if _.isNumber tree 
	s = summa _.head tree
	s + summa _.tail tree 
"""
			c: "summa(tree)" : 161

	Polynom:
		polynom1:
			b:""
			a:""
			c:
				"(new Polynom [5,4,3]).lst" : [5,4,3]
				"(new Polynom [1,0,2,3]).lst" : [1,0,2,3]

		polynom2:
			b:""
			a:""
			c:
				"(new Polynom [5,4,3]).to_s()" : "3*x^2+4*x+5"
				"(new Polynom [0,0,1]).to_s()" : "x^2"

		polynom3:
			b:""
			a:""
			c:"(new Polynom [5,4,3]).add(new Polynom [4,3]).to_s()" : "3*x^2+4*x+5"

		polynom4:
			b:""
			a:""
			c:"(new Polynom [5,4,3]).mul(new Polynom [4,3]).to_s()" : "9*x^3+24*x^2+31*x+20"
	
		polynom5:
			b:""
			a:""
			c:"(new Polynom [5,4,3]).value(2)" : 25

		polynom6:
			b:""
			a:""
			c:"(new Polynom [5,4,3]).diff().lst" : [4,6]

		polynom7:
			b:""
			a:""
			c:"(new Polynom [5,4,3]).integ().lst" : [0,5,2,1]

		polynom8:
			b:""
			a:""
			c:"(new Polynom [0,0,1]).integ().to_s()" : "0.3333333333333333*x^3"

		polynom9:
			b:""
			a:""
			c:"(new Polynom [0,0,1]).integ().value(3)" : 9

		polynom10:
			b:""
			a:""
			c:"(new Polynom [5,4,3]).power(2).lst" : [25,40,46,24,9]

		polynom11:
			b:""
			a:""
			c:"(new Polynom [4,3]).power(3).lst" : [64,144,108,27] 

		polynom12:
			b:""
			a:""
			c:"(new Polynom [3,2]).compose(new Polynom [3,2]).lst" : [9,4] 

		polynom13:
			b:""
			a:""
			c:"(new Polynom [3,2]).compose(new Polynom [5,0,-1]).lst" : [13,0,-2] 

		polynom14:
			b:""
			a:""
			c:"(new Polynom [5,0,-1]).compose(new Polynom [3,2]).lst" : [-4,-12,-4]

		polynom15:
			b:""
			a:""
			c:"(new Polynom [5,0,-1]).compose(new Polynom [5,0,-1]).lst" : [-20,0,10,0,-1]
