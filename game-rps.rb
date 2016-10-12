#Rock Paper Scissors Game
#Author > Solybarr
#https://github.com/solybarr/ruby-scripts/blob/master/game-rps.rb

# My steps for this game
# 1- Ask for input, give choice to quit
# 1.1 - Check if input is valid
# 2- Randomly generate computer choice
# 3 - Compare choices
# 4 - Show answer, ask to continue or quit

@run_game = true
message = "Enter choice (rock, paper, scissors or quit): "

def compare(computer, player)
	if computer == 0
		choice = "Rock"
	elsif computer == 1
		choice = "Paper"
	else
		choice = "Scissors"
	end

	if computer != player 
		case player
		when 0
			if computer == 1
				result = "Lose"
			elsif computer == 2
				result = "Win"
			end
		when 1
			if computer == 0
				result = "Win"
			elsif computer == 2
				result = "Lose"
			end
		when 2
			if computer == 0
				result = "Lose"
			elsif computer == 1
				result = "Win"
			end			
		end
	else
		result = "Tie"
	end

	puts "Computer choice: " + choice

	puts result
	puts "Another round? y/n"
	round = gets.chomp.downcase
	if round == "n"
		puts "Ok, Goodbye"
		@run_game = false
	end

end

while @run_game
	puts message
	the_number = rand(3)	
	the_option = gets.chomp

	case the_option.downcase
	when "rock"
		compare(the_number,0)
	when "paper"
		compare(the_number,1)
	when "scissors"
		compare(the_number,2)
	when "quit"
		puts "Goodbye"
		@run_game = false
	else
		puts "Invalid choice."
	end
end


