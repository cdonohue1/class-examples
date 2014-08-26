# 1. Define class's for add, subtract, devide and multiply as objects
# 2. give rules for adding, subtracting, deviding and multiplying
# 3. make calculator have user input
# 4. validate inputs


@continue = true
puts "/********************************************************/

Welcome would you like to use my calculator [yes] or [no]

/*********************************************************/"
answer = gets.chomp()
if answer == "no" then @continue = false
elsif answer == "yes" then @continue = true
else puts "invalid input"
end
@using = true
@the_total = 0 
@continue = true

# class Add
# 	def intialize(x, y)
# 		@number_1, @number_2 = x, y
# 	end
# 	def the_total
# 	    @the_total = @number_1 + @number_2
# 	    puts "#{@number_1} + #{@number_2}= #{@the_total}" 
# 	end
# end
# go = Add.new
# puts go.@the_total('1', '2')

class Calculator
	def intialize
		@using = true
	end

	def add(x,y) 
		@the_total = x+y
		puts @the_total
	end

	def subtract(x,y)
		@the_total = x-y 
		puts @the_total
	end

	def multiply(x,y)
		@the_total = x*y 
		puts @the_total
	end
	def devide(x,y)
		@the_total = x/y
		puts @the_total
	end
end

# go = Calculator.new
# puts go.add(1, 2)

# # class subtract
# 	def intialize(n1, n2)
# 		    puts "Which two numbers would you like to subtract?"
# 	    n1 = gets.chomp.to_f
# 	    puts "-"
# 	    n2 = gets.chomp.to_f
# 	    @the_total= n1 - n2 + @the_total
# 	    puts "=\n #{@the_total}"
# 	end
# end
while @continue == true do
puts "/********************************************************/

Would you like to continue to use my calculator? [yes] to enter new equation or [no]
to exit the claculatoror type [clear] to reset calculator and 
continue.

/********************************************************/"
	answer = gets.chomp()
	if answer == "no" then @continue = false
	elsif answer == "yes" then @continue = true
	elsif answer == "clear" then @the_total = 0
	else puts "invalid response"
		redo
	end


go = Calculator.new

puts "Type one of the following [add], [multiply], [devide] or [subtract] ?"
response = gets.chomp

if response == "add"
	x = gets.to_f
	puts "+"
	y = gets.to_f
	go.add x, y

elsif response == "subtract"
	x = gets.to_f
	puts "-"
	y = gets.to_f
	go.subtract x, y

elsif response == "multiply"
	x = gets.to_f
	puts "*"
	y = gets.to_f
	go.multiply x, y

elsif response == "devide"
	x = gets.to_f
	puts "/"
	y = gets.to_f
	go.devide x, y

else puts "invalid input" 
	redo
end 

end

