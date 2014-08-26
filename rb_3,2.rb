# previous = {:previous => 0}
puts "would you like to use the calculator [yes] or [no]"
answer = gets.chomp()
if answer == "no" then continue = false
elsif answer == "yes" then continue = true
end

previous_result = 0
while continue == true do

def add(previous_result_parameter)
    puts "Which numbers would you like to add?"
    n1 = gets.chomp.to_i
    n2 = gets.chomp.to_i
    new_result = n1 + n2 + previous_result_parameter
    puts "The sum is... #{previous_result}"
    return new_result
end

	# def subtract
	#     puts "Which numbers would you like to subtract?"
	#     n1 = gets.chomp.to_i
	#     n2 = gets.chomp.to_i
	#     @anwser = n1 - n2 + @anwser
	#     puts "The answer is... #{@anwser}"
	# end

	# def multiply #(x,y I could add this to my method)
	# puts "Which numbers would you like to multiply?"
	#     n1 = gets.chomp.to_i
	#     n2 = gets.chomp.to_i
	#     @anwser = n1 * n2 + @anwser
	#     puts "The answer is... #{@anwser}"
	# end

	# def devide
	# 	puts "Which numbers would you like to multiply?"
	#     n1 = gets.chomp.to_i
	#     n2 = gets.chomp.to_i
	#    	@anwser = n1 / n2 + @anwser
	#     puts "The answer is... #{@anwser}"
	# end

	puts "Would you like to add, multiply, divide or subtract?"
	response = gets.chomp
	if response == "add" 
	 previous_result = add(previous_result)
	elsif response == "subtract" then subtract
	elsif response == "multiply" then multiply
	end 

	puts "Perform another operation? [yes] or [no]"
	answer = gets.chomp()
	if answer == "no" then continue = false
	elsif answer == "yes" then continue = true
	end
end