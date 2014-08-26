#cd C:\Ruby193\Scripts

#Rules:
# O < 2cnt = X
# O == 2..3cnt = O
# O > 3cnt = X
# X == 3 = O
# O{1X 2O 3O 45678X}
# X{12X 3O 45678X}

class GoL
	def initialize
		@x = 5	#Width of the game 1-39
		@y = 5	#Height of the game 1-50
		@board = #[]#Array used to store the Life Matrix.
		[["X ", "X ", "X ", "X ", "X "],
		["X ", "X ", "O ", "O ", "X "],
		["X ", "O ", "O ", "X ", "X "],
		["X ", "X ", "O ", "X ", "X "],
		["X ", "X ", "X ", "X ", "X "]] 
		@copyb = [] #Aray used to temporarily store while calculating.
		@its = 13 #Iteration checker- ends game at desired time.
		@slp = 2 #Step function- indicates how long each tick lasts.
		@cnt = 0 #Count function, used to track how many neighbours a cell has.
		@wrapping = true #Wrapping feature, on by default
	end
	
	def scfunc
		puts "Nothing here yet. :D"
		coords
	end
	
	def coords
		h = 0 #Hold variable. Used to keep looping until user is finished.
		while h == 0
			puts "Please type coordinates of spot to mark, separated by a space."
			puts "(!NOT YET)Type F, func, or function for quick pre made maps."
			puts "Leave blank to finish. "
			c = gets.chomp.downcase
			if ["f", "fun", "func", "function", "functions"].include?(c)
				scfunc
			end
			if c == ""#Checks to see if no input was given, gets out of loop.
				h = 1
				break
			end
			if c.include?(" ")#Checks if there are two numbers.
				c = c.split(" ").map(&:to_i)#Number into array.
				cx = c[0]
				cy = c[1]
			else	#One number- used for both coordinates
				cx = c.to_i
				cy = c.to_i
			end
			cx = @x if cx >= @x+1 #Max values- coordinates can't be beyond Matrix boundaries.
			cx = 1 if cx <= 2
			cy = @y if cy >= @y+1
			cy = 1 if cy <= 2
			puts "#{cx},#{cy}"
			@board[cy-1][cx-1] = "X " #Marks the indicated Coordinate
			show
		end
	end
	
	def getsiz #Input from user, and builds the Life Matrix.
		puts "How big? Input two numbers separated by space.\nIf 1 number, will make square. Min = 5x5, Max = 39x50."
		siz = gets.chomp
		puts "\n"
		if siz.include?(" ")#Check to see if there are two numbers.
			siz = siz.split(" ").map(&:to_i)#Breaks the input from a string into an array.
			@x = siz[0] #Stores the array in two values, x and y.
			@y = siz[1]
		else 	#There is only one number, therefore use it as both coordinates.
			@x = siz.to_i
			@y = siz.to_i
		end
		@x = 39 if @x >= 40 #Set max and min
		@x = 5 if @x <= 4
		@y = 50 if @y >= 51
		@y = 5 if @y <= 4
		@board = Array.new(@y, Array.new(@x, "O "))#Build the matrix.
		puts "Your Life Matrix will be #{@x} x #{@y}"
		show #Call show, which displays the Life Matrix to the user.
		puts "Would you like to activate wrapping?"
		puts "Wrapping will cause looping on the edges of the screen."
		puts "Yes default. N or No to deactivate."
		wrap = gets.chomp
		if ["n", "no"].include?(wrap)
			wrap = false
		else
			@wrapping = true
		end
		puts "Wrapping is #{@wrapping}."
		puts "How many iterations? Leave blank for infinite."
		@its = gets.chomp.to_i 
		puts "How long for each iteration? Leave blank for Medium.\n0.01 for very fast, 0.1 fast, 1 for medium, 3 for slow."
		@slp = gets.chomp.to_f
		if @slp == 0	#Verifies a valid number is given for delay.
			@slp = 1
		end
		coords
	end
	
	def tick #Where the magic happens! All the calculations.
		sleep(@slp)
		 system('cls') #DELETE
		@copyb = @board
		puts "Writing to copy."
		ix = 0
		iy = 0
		while ((ix < @x) && (iy < @y))
			neighbor(ix, iy)
			if (@board[iy][ix] == "O ") && (@cnt < 2 || @cnt > 3)
				@copyb[iy][ix] = "X "
				puts "	#{ix+1}, #{iy+1} has died!"
				show
				puts ""
				ccshow
			elsif (@board[iy][ix] == "O ") && (@cnt == 2 || @cnt == 3)
				@copyb[iy][ix] = "O "
				puts "	#{ix+1}, #{iy+1} has survived!"
			elsif (@board[iy][ix] == "X ") && @cnt == 3
				@copyb[iy][ix] = "O "
				puts "	#{ix+1}, #{iy+1} has begun life!"
				show
				puts""
				ccshow
			elsif (@board[iy][ix] == "X ") && @cnt != 3
				@copyb[iy][ix] = "X "
				puts "	#{ix+1}, #{iy+1} remains in the grave."
			else
				puts "XXXXSomething has gone terribly wrong....XXXXX"
			end
			ix += 1
			if (ix == @x && iy == @y-1)
				# @board = @copyb 
				puts "Writing to board."
			end
			if ix == @x && iy < @y
				ix = 0
				iy += 1
			end
			@cnt = 0
		end
		show
	end
	
	def neighbor(x1, y1) #Calculates how many live neighbours for each cell.
		#x1 is absolute (0-38) @x is relative (1-39)
		#xn is left of x1. xn = (x1 - 1)
		#xp is right of x1. xn = (x1 + 1)
		#@x is relative, so 1 greater than x1. (x1 + 1)
		#Testing to see if a wrap should happen or not
		if @wrapping == true
			if x1 == 0 #If x1 is 0, it's the very left column. 
				xn = @x - 1 #xn needs to move one more, wrapping to the right side, or @x. That needs to be converted to abs, so -1.
			else #If x1 is any regular, non-left coordinate, check 1 space to the left.
				xn = x1 - 1 #x1 is absolute, so no need to convert. -1 will check the left.
			end
			if x1 == @x - 1#Convert @x to absolute, check to see if x1 is the right side.
				xp = 0#xp is moving right. If there is no right, wrap to absolute 0.
			else #Otherwise, xp moves right, or +1
				xp = x1 + 1 #Because x1 is absolute, no conversion is necessary.
			end
			if y1 == 0 #yn needs to move up, if 0; wrap
				yn = @y - 1 #Move to bottom-Conversion necessary
			else	#not on top, move up 1.
				yn = y1 - 1 #y1 is absolute, no conversion necessary
			end
			if y1 == @y - 1 #y1 needs to move down, test if on bottom already- convert @y to abs
				yp = 0 #Wrap back to top if y1 is at the bottom.
			else #Otherwise move down 1.
				yp = y1 + 1
			end
			@cnt += 1 if @board[yp][xn] == "O " # Y+ X- re; -1,1 (1)
			@cnt += 1 if @board[yp][x1] == "O " # Y+ X rel 0,1 (2)
			@cnt += 1 if @board[yp][xp] == "O " # Y+ X+ rel 1,1 (3)
			@cnt += 1 if @board[y1][xn] == "O " # Y X- rel -1, 0 (4)
			@cnt += 1 if @board[y1][xp] == "O " # Y X+ rel 1, 0 (6)
			@cnt += 1 if @board[yn][xn] == "O " # Y- X- rel -1, -1 (7)
			@cnt += 1 if @board[yn][x1] == "O " # Y- X rel 0, -1 (8)
			@cnt += 1 if @board[yn][xp] == "O " # Y- X+ rel 1, -1 (9)
			# 1/2/3
			# 4/5/6
			# 7/8/9
			#puts "#{@board[y1][x1]} has #{@cnt} neighbours at coordinate #{x1+1},#{y1+1}"
		else
			if x1 == 0 
				xn = nil
			else 
				xn = x1 - 1 
			end
			if x1 == @x - 1
				xp = nil
			else 
				xp = x1 + 1 
			end
			if y1 == 0
				yn = nil
			else	
				yn = y1 - 1 
			end
			if y1 == @y - 1 
				yp = nil 
			else 
				yp = y1 + 1
			end
			if xn != nil
				if yp != nil
					@cnt += 1 if @board[yp][xn] == "O " # Y+ X- re; -1,1 (1)
				end
				@cnt += 1 if @board[y1][xn] == "O " # Y X- rel -1, 0 (4)
				if yn != nil
					@cnt += 1 if @board[yn][xn] == "O " # Y- X- rel -1, -1 (7)
				end
			end
			if xp != nil
				if yp != nil
					@cnt += 1 if @board[yp][xp] == "O " # Y+ X+ rel 1,1 (3)
				end
				@cnt += 1 if @board[y1][xp] == "O " # Y X+ rel 1, 0 (6)
				if yn != nil
					@cnt += 1 if @board[yn][xp] == "O " # Y- X+ rel 1, -1 (9)				
				end
			end
			if yp != nil
				@cnt += 1 if @board[yp][x1] == "O " # Y+ X rel 0,1 (2)
			end
			if yn != nil
				@cnt += 1 if @board[yn][x1] == "O " # Y- X rel 0, -1 (8)
			end
			# 1/2/3
			# 4/5/6
			# 7/8/9
			#puts "#{@board[y1][x1]} has #{@cnt} neighbours at coordinate #{x1+1},#{y1+1}"
		end
	end
	
	def show #Displays the current Life Matrix.
		i = 0
		while i < @y
			puts @board[i].join
			i += 1
		end	
	end
	
	def ccshow #Displays the COPY Life Matrix.
		i = 0
		while i < @y
			puts @copyb[i].join
			i += 1
		end	
	end
end

system('cls')
game = GoL.new
puts "Do you wish to adjust settings? \nAny key to skip. Y or yes for yes."
do_set = gets.chomp.downcase
if ["y", "yes"].include?(do_set)
	game.getsiz
else
	game.scfunc
end
i = 1 #Counter for iterations.
while game.instance_variable_get(:@its) != i
	game.show
	game.tick
	i += 1 #Loops game until counter is complete.
	puts "Iterations: #{i}"
end
puts "Operation complete! Thanks for playing! :D"