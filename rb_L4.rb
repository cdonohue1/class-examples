# 1 Make array 
# 2 Set array to board 
# 3 Create tracker to mimic board every iteration
# 4 Make display method for board 
# 5 Make rules that state alive/ dead cells o = alive x = dead
# 6 count alive cells
# 7 Make two objects xpos and ypos to set position of xpos and ypos to 0,0
# 8 Make if then method to recognize what is alive around the xpos and ypos positions by creating a if method 
# Loop display and methods


@live = 0
dead = 1
cell = 0
# continue = true
xpos = "o"
ypos = "x"

@board = Array [['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'x', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'x'], 
                ['o', 'x', 'o', 'o', 'x', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x'],
                ['o', 'o', 'o', 'x', 'o', 'o', 'x', 'o', 'o', 'x']]
@board = @tracker

def tracker
@tracker = @tracker{|row| puts row.join(" ")}
end

def display
   @board = @board{|row| puts row.join(" ")}
end

def live(xpos, ypos)
   @tracker[xpos][ypos] == "X"
end

def die(xpos, ypos)
   @tracker[xpos][ypos] == "o"
end      

def check_surrounding(xpos, ypos)
   if @board[xpos][ypos + 1] == 'o' #up of cell
       @live += 1
   elsif @board[xpos][ypos - 1] == 'o' #left of cell
       @live += 1
   elsif @board[xpos + 1][ypos + 1] == 'o' #right up one cell
       @live += 1
   elsif @board[xpos - 1][ypos - 1] == 'o' #left down one
       @live += 1
   elsif @board[xpos + 1][ypos + 1] == 'o' #right up one
       @live += 1
   elsif @board[xpos - 1][ypos - 1] == 'o' #left down one 
       @ive += 1
   elsif @board[xpos + 1][ypos] == 'o' #up one
       @live += 1
   elsif @board[xpos - 1][ypos] == 'o' #down one
       @live += 1
   end
end

def alive_check(xpos, ypos)
@board.each_with_index do |row, xpos|
   row.each_with_index do |cell, ypos|
       if cell == "X" && @live < 2
           die(xpos,ypos)
       elsif cell == "X" && (@live == 2 || 3)
           live(xpos,ypos)
       elsif cell == "X" && @live > 3
           die(xpos,ypos)
       elsif cell == "o" && @live ==3
           live(xpos,ypos)
       end
     end
   end
end


# check_surrounding(0,0)
# alive_check(0,0)
# system ("clear")
display
puts @live
# puts "llllllllllllll"

# check_surrounding
# alive_check
