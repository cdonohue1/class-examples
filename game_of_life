@board = [['a','b','c'],
          ['d','e','f'],
          ['g','h','i']]
 
@tracker = [['a','b','c'],
          ['d','e','f'],
          ['g','h','i']]
 
 
@board.each_with_index do |row, xpos|
  row.each_with_index do |cell, ypos|
    # You need a variable to keep track of how many cells are alive or dead
    @live = 0
 
    print 'This spot contains: '
    puts cell
    print 'The coordinates of this position are: '
    print xpos
    print ' , '
    puts ypos
    print 'You can see what the spot contains using @board[xpos][ypos]: '
    puts @board[xpos][ypos]
    # Check surrounding cells and count how many are alive
    # For example, if you wanted to check the cell directly above the current cell:
    
    # check_surrounding(xpos, ypos + 1)
    
    # If you wanted to check the cell directly to the left of the current cell:
    
    # check_surrounding(xpos - 1, ypos)
    
    # Choose based on the rules if it lives or dies and call that method
    # Here is where you'd put all the if statements that correspond to each rule
    
    # live(xpos, ypos)
    # or
    # die(xpos, ypos)
  end
end
 
# This code prints out the board all fancy looking.
@board.each do |r| 
  puts r.map { |p| p }.join(" ")
end
 
# live, die, and check_surrounding methods
 
def live(xpos, ypos)
  @tracker[xpos][ypos] = 'O'
end
 
def die(xpos, ypos)
  @tracker[xpos][ypos] = 'x'
end
 
def check_surrounding(xpos, ypos)
  if @board[xpos][ypos] == 'O'
    # if the position contains a live cell, add one to the live cell counter
    @live += 1
  end
end