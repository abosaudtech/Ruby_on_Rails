require_relative './board.rb'

module TicTacToe 
    class Game

        WINNING_COMBOS = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9], 
            [1, 5, 9],
            [7, 5, 3],
            [1, 4, 7],
            [2, 5, 8],
            [3, 6, 9]
        ]
        def initialize 
            # We must include file board.rb above to call the class:
            @board = Board.new

            # Creating tow arrays to determine players choices:
            @choices = {
                'X' => [],
                'O' => []
            }
        end

        def play
            puts "Welcom to TicTacToe"
            # Define variable winner:
            winner = nil
            # Defining the who will play now? and assume he is X
            current_player = 'X'
            until @board.full?
                round(current_player)
                # Check if chioces of the player X or Y is success 
                winner = 'X' if check_choices(@choices['X'])
                winner = 'O' if check_choices(@choices['O'])
                # Stop looping if winner not nil any more.
                break if winner 
                current_player = current_player == 'X' ? 'O' : 'X'
            end
            display_result(winner)
        end
        # Take array from method WINNING_COMBOS and check if it success or not.
        def check_choices(choices)
            WINNING_COMBOS.any? do |combo|
                (combo - choices).empty?
            end
        end

        # Show places of numbers on the board at the beginging of game.
        # Read the number from user to know where he will put it.
        # Do the acual movement of the player.
        # Show the board containing the choices after playing.
        def round(player)
            @board.display_numbers if @board.empty?
            puts "Player #{player}, choose a place"
            # Now we want to read_place and this contain the place player want to play in.
            place = read_place
            do_move(player, place)
            @board.display
        end

        # Defining read_place 
        def read_place
            # If this is true value we will not enter the loop bellow.
            place = gets.chomp.to_i
            # Ceating loop while condition is true and check if the place is nil
            until place <= 9 and place >= 1 and !@board.place_occupied?(place)
                puts "Please choose a number between 1..9 for a place that is not occupied"
                place = gets.chomp.to_i
            end
            # this for return the place from method.
        place 
        end
        # this method take the player as string X or O and the place as Integer.
        def do_move(player, place)
            @choices[player].push place 
            @board.set(place, player)
        end
        # if there is a winner print his name or the print drawn.
        def display_result(winner)
            if winner
                puts "Winner is #{winner}"
            else
                puts "Game is drawn"
            end     
        end
        
    end
    TicTacToe::Game.new.play
end

