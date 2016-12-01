# a : facit, might be any language. Not used by p5Dojo.
# b : comment line. LOC and keyword clues
# c : call in Javascript syntax
# Observe:	local variables a,b and c must be declared var. e.g. r,g,b
# Eventually, skip a,b and c and use a list instead

data = 
	
	Assert1: 
		Operator1: 
			a:"function f(x) { return x }"
			b:"# + - * / %\nf = (x) -> 0"
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
				class Cpx
					constructor : (@x,@y) ->
					add : (other) ->
						new Complex @x+other.x, @y+other.y
					mul : (other) ->
						a = @x
						b = @y
						c = other.x
						d = other.y
						new Complex a*c-b*d, b*c+a*d
					tos : ->
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
				"new Cpx(-1,0).tos()" :"-1"
				"new Cpx(-1,-1).tos()" : "-1-i"
				"new Cpx(0,-1).tos()" : "-i"
				"new Cpx(0,0).tos()" : "0"
				"new Cpx(0,1).tos()" : "i"
				"new Cpx(1,-2).tos()" : "1-2i"
				"new Cpx(1,-1).tos()" : "1-i"
				"new Cpx(1,0).tos()" : "1"
				"new Cpx(1,1).tos()" : "1+i"
				"new Cpx(1,2).tos()" : "1+2i"
	
		split1: 
			a:"g = (h) -> _.object(f.split '=' for f in h.split('?')[1].split('&'))"
			b:"# LOC:1 split for in _.object"
			c:  
				"g('url?x=0&y=1')" : {x:'0', y:'1'}
				"g('url?page=7')" : {page : '7'}

