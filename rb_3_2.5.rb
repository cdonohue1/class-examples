puts "/********************************************************/

Welcome would you like to use my calculator [yes] or [no]

/*********************************************************/"
answer = gets.chomp()
if answer == "no" then continue = false
elsif answer == "yes" then continue = true
else puts "invalid input"
end

@the_total = 0 

	def add
	    puts "Which two numbers would you like to add?"
	    n1 = gets.chomp.to_f 
	    puts "+" 
	    n2 = gets.chomp.to_f
	    @the_total = n1 + n2 + @the_total
	    puts "=\n #{@the_total}"
	end

	def subtract
	    puts "Which two numbers would you like to subtract?"
	    n1 = gets.chomp.to_f
	    puts "-"
	    n2 = gets.chomp.to_f
	    @the_total= n1 - n2 + @the_total
	    puts "=\n #{@the_total}"
	end

	def multiply #(x,y I could add this to my method)
	puts "Which two numbers would you like to multiply?"
	    n1 = gets.chomp.to_f
	    puts "*"
	    n2 = gets.chomp.to_f
	   @the_total = n1 * n2 + @the_total
	    puts "=\n #{@the_total}"
	end

	def devide
		puts "Which two numbers would you like to devide?"
	    n1 = gets.chomp.to_f
	    puts "/"
	    n2 = gets.chomp.to_f
	   @the_total = n1 / n2 + @the_total
	    puts "=\n #{@the_total}"
	end

while continue == true do



puts "Type one of the following [add], [multiply], [devide] or [subtract] ?"
response = gets.chomp
if response == "add" 
 	add
elsif response == "subtract"
 	subtract
elsif response == "multiply"
 	multiply
elsif response == "devide"
 	devide
else puts "invalid input" 
	redo
end 

	puts "/********************************************************/

Would you like to continue? [yes] to enter new equation or [no]
to exit the claculatoror type [clear] to reset calculator and 
continue.

/********************************************************/"
	answer = gets.chomp()
	if answer == "no" then continue = false
	elsif answer == "yes" then continue = true
	elsif answer == "clear" then @the_total = 0
	else puts "invalid response"
		redo
	end
end