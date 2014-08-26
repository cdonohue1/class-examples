# 1. Make a class
# 2. create a  cipher
# 3. encrypt the letter
# 4. make all letters lower case
# 5. convert all cipher letters to string
# 6. encrypt the string
# 7. create two while loops that allow encryption and decryption 
# 8. allow user input for created strings
# 9. create user input to choose 
# 10. validate all answers  

# loop do 
# puts "what would you like to do [encrypt] or [decrypt] a message?"
#loop class with two charctors 
# 
# puts 'put your message here'
# input = gets.chomp
# input = 


class Encryptor

	def cipher
	    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
	     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
	     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
	     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
	     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
	     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
	     'y' => 'l', 'z' => 'm'}
	end

 	def decipher
 		{'n' => 'a', 'o' => 'b', 'p' => 'c', 'q' => 'd',
	     'r' => 'e', 's' => 'f', 't' => 'g', 'u' => 'h',
	     'v' => 'i', 'w' => 'j', 'x' => 'k', 'y' => 'l',
	     'z' => 'm', 'a' => 'n', 'p' => 'o', 'c' => 'p',
	     'd' => 'q', 'e' => 'r', 'f' => 's', 'g' => 't',
	     'h' => 'u', 'i' => 'v', 'j' => 'w', 'k' => 'x',
	     'l' => 'y', 'm' => 'z'}
	end


	def encrypt(letter)
		cipher[letter.downcase]
	end




	# def encrypt_letter(dletter,rotation)
	# 	cipher_for_rotation = cipher(rotation)
	# 	cipher_for_rotation[letter]
	# 	lowercase_letter = letter.downcase
	# 	cipher[lowercase_letter]
	# # end
	# def decrypt(letter)
	# 	cipherde[letter]
	# end
	

	# def dencrypt_letter(letter,rotation)
	# 	dcipher_for_rotation = dcipher(rotation)
	# 	dcipher_for_rotation[letter]
	# 	lowercase_letter = letter.downcase
	# 	cipher[lowercase_letter]
	# end

	# for encrypting the string
	# 1. cut the input string into letters
	# 2. encrypt those letters one at a time, gathering the results
	# 3. join the results back together in one string
	def mystring(string)
		results = []
		letters = string.split("")

		letters.each do |letter|
			encrypt(letter)
			results << encrypt(letter)
		end
	 	results.join
	end


	def decrypt(letters)
		decipher[letters.downcase]
	end

	def mystring_decipher(string)
		results = []
		letters = string.split("")

		letters.each do |letters|
			dencrypt(letters)
			results << dencrypt(letters)
		end
	 	results.join
	end
	# def decrypt(string)
	# 	letters = string.split("")
	# 	results = []

	# 	letters.collect do |letter|
	# 		encrypted_letter = encrypt_letter(letter)
	# 		results.push(encrypted_letter)
	# 	end
	#  	results.join
	# end

	# loop do
		# gets.chomp = key
			
	# end
end



e = Encryptor.new
puts e.mystring ("message")
puts e.mystring_decipher ("message")


# while @encrypt == true do

# a b c d e f g h i j k l m
# n o p q r s t u v w x y z
# end

# while @decrypt == true do 



