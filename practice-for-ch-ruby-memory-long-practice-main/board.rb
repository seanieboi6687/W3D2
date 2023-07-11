require_relative "card"

class Board

    def initialize
        @letters = ("A".."H").to_a
        @cards = []
        @board = Array.new(4) {Array.new}
        @size = 16 
        @letters.each do |char|
            @cards << Card.new(char)
            @cards << Card.new(char)
        end

        @board.each do |row|
            4.times do 
                row << @cards.pop
            end
        end
        @cards.shuffle!
    end 

    def populate

    end

    def render

    end

    def won?

    end

    def reveal

    end
end