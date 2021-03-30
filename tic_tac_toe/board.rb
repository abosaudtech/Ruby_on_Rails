module TicTacToe
    class Board
        def initialize
            # this well give as array with 9 elements.
            @cells = [nil] * 9
        end

        # create method return O and X which take tow arguments
        # first is index and the second is the value of that index.
        def set(index, value)
            # This will subtract 1 from the index.
            @cells[index - 1] = value 
        end

        # Here ask all cells are you full?
        def full?
            @cells.none?(&:nil?)
        end

        # Here ask all cells are you empty?
        def empty? 
            @cells.all?(&:nil?)
        end

        # We want to ask if one of cells is empty or not:
        def place_occupied?(place)
            !@cells[place - 1].nil?
        end

        # Display the board and check each cell if nil place it with ' ' or return its value
        def display
            vcells = @cells.map { |c| c.nil? ? ' ' : c }
            puts "#{vcells[0]} | #{vcells[1]} | #{vcells[2]}"
            puts "-----------"
            puts "#{vcells[3]} | #{vcells[4]} | #{vcells[5]}"
            puts "-----------"
            puts "#{vcells[6]} | #{vcells[7]} | #{vcells[8]}"
        end

        # Display example for player to choose the convenent appropriate cell by its number:
        def display_numbers
            puts "1 | 2 | 3"
            puts "------------"
            puts "4 | 5 | 6"
            puts "------------"
            puts "7 | 8 | 9"
        end

    end
end