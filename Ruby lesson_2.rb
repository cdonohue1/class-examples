continue = true 

while continue == true do
	puts ("Enter 1 for rock, 2 for paper and 3 for scissors")
	val = gets.to_i
	if gets.to_i == "no" 
		continue = false

	if (val == 1) 
		val = "rock" 
	elsif (val == 2) 
		val = "paper"
	elsif ( val == 3) 
		val = "scissors" 
	end
	user = val

	coms = rand(3)
	if (coms == 0) 
		coms = "rock"
	elsif(coms == 1) 
		coms = "paper"
	elsif (coms == 2) 
		coms = "scissors"
	end

	if user == coms
		result = ("tie")
	elsif user == "rock" and coms == "paper"
	    result = "lose"
	elsif user == "rock" and coms == "scissors"
		result = "win"
	elsif user == "paper" and coms == "rock"
		result = "win"
	elsif user == "paper" and coms == "scissors"
		result = "lose"
	elsif user == "scissors" and coms == "paper" 
		result = "win"
	elsif user == "scissors" and coms == "rock"
		result = "win"
	end

	puts "your score is #{wins}"
	puts "You chose: #{user}".capitalize
	puts "Computer chose: #{coms}".capitalize
	puts result
end