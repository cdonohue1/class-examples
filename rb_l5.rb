# 1. create two while loops that allow encryption and decryption 
# 2. allow user input for created strings
# 3. create user input to choose 
# 4. validate all answers  

loop do 
puts "what would you like to do [encrypt] or [decrypt] a message?"
start = gets.chomp
if start == "encrypt"
@encrypt = true
elsif start == "decrypt"
@decrypt = true
end

while @encrypt == true do
puts "type what you would like to encrypt"
value = gets.chomp.to_s

value.tr!("abcdefghijklmnopqrstuvwxyz",
    "nopqrstuvwxyzabcdefghijklm")

puts value

end

while @decrypt == true do 

value = gets.chomp.to_s

value.tr!("nopqrstuvwxyzabcdefghijklm",
    "abcdefghijklmnopqrstuvwxyz")

puts value

end

