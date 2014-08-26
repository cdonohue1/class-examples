#create a object for out use file class and open method to open a new file

out = File.open("sample.txt", "w")
out.write("Hello, World!")
out.write("This is a file, hooray!!!!!.")
out.close


#reads the file
input = File.open("sample.txt", "r")
puts input.read