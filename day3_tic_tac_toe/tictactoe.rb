puts "Welcome to our game of Tic Tac Toe!"

# Objective is to get 3 X's or 3 O's in a row/column/diagonal

# Present a board
# 0 represents blank
# 1 represents X
# 2 represents O

# Global variables
# Instance variables
# Local variables
# Class variables (tomorrow)

@board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]
@gameon = true
@turn_number = 0

def display_board
	puts "#{display_square @board[0][0]}|#{display_square @board[0][1]}|#{display_square @board[0][2]}"
	puts "-----"
	puts "#{display_square @board[1][0]}|#{display_square @board[1][1]}|#{display_square @board[1][2]}"
	puts "-----"
	puts "#{display_square @board[2][0]}|#{display_square @board[2][1]}|#{display_square @board[2][2]}"
end

def display_square square
	case square
	when 0
		' '
	when 1
		'X'
	when 2
		'O'
	end	
end

def response_grabber_1
	puts "Player 1, it's your turn!\n1 - 9 please: 1 is top left, 9 is bottom right (Like reading a book)"
	response = gets.chomp.to_i
	case response
	when 1
		@board[0][0] = 1
	when 2
		@board[0][1] = 1
	when 3
		@board[0][2] = 1
	when 4
		@board[1][0] = 1
	when 5
		@board[1][1] = 1
	when 6
		@board[1][2] = 1
	when 7
		@board[2][0] = 1
	when 8
		@board[2][1] = 1
	when 9
		@board[2][2] = 1
	end
	@turn_number += 1
	if @turn_number >= 9
		puts "Tie!"
		@gameon = false
	end	
end

def response_grabber_2
	puts "Player 2, it's your turn!\n1 - 9 please: 1 is top left, 9 is bottom right (Like reading a book)"
	response = gets.chomp.to_i
	case response
	when 1
		@board[0][0] = 2
	when 2
		@board[0][1] = 2
	when 3
		@board[0][2] = 2
	when 4
		@board[1][0] = 2
	when 5
		@board[1][1] = 2
	when 6
		@board[1][2] = 2
	when 7
		@board[2][0] = 2
	when 8
		@board[2][1] = 2
	when 9
		@board[2][2] = 2
	end
	@turn_number += 1
	if @turn_number >= 9
		puts "Tie!"
		@gameon = false
	end
end

def check_win player
	# horizontal win conditions
	if @board[0][0] == player && @board[0][1] == player && @board[0][2] == player
		puts "Player #{player} wins!"		
		@gameon = false
	elsif @board[1][0] == player && @board[1][1] == player && @board[1][2] == player
		puts "Player #{player} wins!"		
		@gameon = false
	elsif @board[2][0] == player && @board[2][1] == player && @board[2][2] == player
		puts "Player #{player} wins!"		
		@gameon = false
	# vertical win conditions
	elsif @board[0][0] == player && @board[1][0] == player && @board[2][0] == player
		puts "Player #{player} wins!"		
		@gameon = false
	elsif @board[0][1] == player && @board[1][1] == player && @board[2][1] == player
		puts "Player #{player} wins!"		
		@gameon = false
	elsif @board[0][2] == player && @board[1][2] == player && @board[2][2] == player
		puts "Player #{player} wins!"		
		@gameon = false
	# diagonals
	elsif @board[0][0] == player && @board[1][1] == player && @board[2][2] == player
		puts "Player #{player} wins!"		
		@gameon = false
	elsif @board[0][2] == player && @board[1][1] == player && @board[2][0] == player
		puts "Player #{player} wins!"		
		@gameon = false
	end
end


while @gameon
	display_board

	# Player 1 makes a choice
	# Save that choice
	# Did player 1 win? If so, end the game
	response_grabber_1
	check_win 1
	display_board
	if @gameon == false
		break
	end
	# If not, Player 2 makes a choice
	# Save that choice
	# DId player 2 win? If so, end the game
	response_grabber_2
	check_win 2
	if @gameon == false
		break
	end	
end

# Sweet, we have some cool tools. Let's think before we code!
# board.each do |row|
# 	game_row = ""
# 	row.each do |square|
# 		case square
# 		when 0
# 			game_row += ' |'
# 		when 1
# 			game_row += 'X|'
# 		when 2
# 			game_row += 'O|'
# 		end
# 	end
# 	puts game_row
# end

# Repeat line 5-11

