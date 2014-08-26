 puts "/********************************
 Welcome would you like to use my calculator [yes] or [no]
 /********************************"
answer = gets.chomp()
if answer == "no" then continue = false
elsif answer == "yes" then continue = true
end

answer = 0

while continue == true do

	def add
	    puts "Which numbers would you like to add?"
	    n1 = gets.chomp.to_i
	    n2 = gets.chomp.to_i
	    answer = n1 + n2
	    puts "The sum is... #{answer}"
	end

	def subtract
	    puts "Which numbers would you like to subtract?"
	    n1 = gets.chomp.to_i
	    n2 = gets.chomp.to_i
	    @anwser = n1 - n2
	    puts "The answer is... #{anwser}"
	end

	def multiply #(x,y I could add this to my method)
	puts "Which numbers would you like to multiply?"
	    n1 = gets.chomp.to_i
	    n2 = gets.chomp.to_i
	    @anwser = n1 * n2 
	    puts "The answer is... #{anwser}"
	end

	def devide
		puts "Which numbers would you like to multiply?"
	    n1 = gets.chomp.to_i
	    n2 = gets.chomp.to_i
	   	@anwser = n1 / n2 
	    puts "The answer is... #{anwser}"
	end

	puts "Type one of the following [add], [multiply], [divide] or [subtract] ?"
	response = gets.chomp
	if response == "add" then add
	elsif response == "subtract" then subtract
	elsif response == "multiply" then multiply
	end 

	puts "Perform another operation? [yes] or [no]"
	answer = gets.chomp()
	if answer == "no" then continue = false
	elsif answer == "yes" then continue = true
	end
end