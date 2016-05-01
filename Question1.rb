#----------------
# name: NumberGuess.rb
#
#----------------
 
class Screen
 
 def cls
   puts ("\n" * 30)
   puts "\a"
 end
 
 def pause
    STDIN.gets
 end
 
end
 
class Game

	attr_accessor :total_games_played, :num_guess
	#Q1.A - Initialize variables for total games played and keeping track of number of guesses
	def initialize
		@total_games_played=0
		@num_guess = 0
	end
	
	def display_greeting
        Console_Screen.cls
        print "\t\t Welcome to the Ruby Number Guessing Game!" +
        "\n\n\n\n\n\n\n\n\n\n\n\n\ Press Enter to " + 
        "continue."
 
        Console_Screen.pause
    end
 
    def display_instruction
        Console_Screen.cls
        puts "Instruction:\n\n"
 
        puts "This game randomly generates a number from 1 to 1000 and "
        puts "challaenges you to identify it in as few guesses and possible "
    end
 
    def generate_number
		#Q1.B - Increase the range of random number generated between 1 to 1000
        return randomNo = 1 + rand(1000)
		#return randomNo = 1 + rand(100)
    end
 
    def play_game
		#Q 1.A - Increment count for total num of games played
		@total_games_played += 1
		
		#Q1.D - added variable to keep track or count for number of guess per game
		num_guess_for_curr_game = 0
		number = generate_number
		Console_Screen.pause
		
        loop do
            Console_Screen.cls
            print "\nEnter your guess and press the enter key: "
 
            reply = STDIN.gets
            reply.chop!
            reply = reply.to_i
			
			#Q1.B - Increase the range from 1 to 1000
			# if reply < 1 or reply > 1000 then
			# #if reply < 1 or reply > 100 then
                # redo # redo the ciurrent iteration of the loop
            # end
 			
			#Q1.C - Notify player for invalid guess entered
			#Q1.E - Cheat code 5000 to display the random generated number 
            if reply == 5000
				Console_Screen.cls
				puts "The random number generated is #{number}"
				Console_Screen.pause
			elsif reply < 0 or reply > 1000 then
                Console_Screen.cls
				puts "Invalid Input #{reply} - Please enter a number between 1 to 1000"
				Console_Screen.pause
				redo #ReStart loop again, do not increment counter of guess (at end of loop) as it is not valid
			elsif reply == number then
                Console_Screen.cls
                print "You have guessed the number! Press Enter to continue."
                Console_Screen.pause
                break
            elsif reply < number then
                Console_Screen.cls
                print "Your guess is too low! Press enter to continue."
                Console_Screen.pause
            elsif reply > number then
                Console_Screen.cls
                print "Your guess is too high! Press enter to continue."
                Console_Screen.pause
            end
			
			#Q1.A - Increment count for the total number of guess made across all games
			@num_guess += 1
			
			#Q1.D - Increment count for number of guess for current game
			num_guess_for_curr_game += 1
 
			#Q1.D - Declare lost if it reaches 10 guess in current game
			if num_guess_for_curr_game == 10 then
				puts "GAME LOST - You have reached max allowed 10 guess in a game"
				Console_Screen.pause
				break
			end
        end
             
    end
 
    def display_credits
		#Q. 1-A - Commented clearing of screen to display average and total games played
        #Console_Screen.cls
        puts "\t\t\Thanks you for playing the number game!!"
    end
 
    $noRight = 0
 
    Console_Screen = Screen.new
 
    SQ = Game.new
 
    SQ.display_greeting
 
    answer = ""
 
    loop do
        Console_Screen.cls
 
        print "Are you ready to play the Ruby Number Guessing Game? (y/n): "
 
        answer = STDIN.gets
 
        answer.chop!
 
        break if answer == "y" || answer == "n"
    end
 
    if answer == "n"
 
        Console_Screen.cls
 
        puts "Perhaps anoher time.\n\n"
 
    else
        SQ.display_instruction
 
        loop do
            SQ.play_game
 
            Console_Screen.cls

            print "Would you like to play again? (y/n): "
 
            playAgain = STDIN.gets
            playAgain.chop!
 
            break if playAgain == "n"
        end
		
		puts "Total Games Played = #{SQ.total_games_played}"
		puts "Total Guess = #{SQ.num_guess}"
		puts "Average num of Guess per Game = #{SQ.num_guess/SQ.total_games_played}"
		
        SQ.display_credits
 
    end
 
end