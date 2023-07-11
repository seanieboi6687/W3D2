require_relative "card"

class Board

    def initialize(size)
        @size = size
        @letters = ("A".."H").to_a
        @cards = []
        @board = Array.new(size) {Array.new(size, [])}
        @dimension = size * size
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
    
    def [](position)
        row, col = position
        @board[row][col]
    end

    def []=(position, value)
        row, col = position
        @board[row][col] = value
    end

    def populate
        flattened = @board.flatten
        until flattened.all? {|ele| ele != []} do
            @cards.each do |card|
                idx1 = rand(0..@size - 1)
                idx2 = rand(0..@size - 1)
                if @board[idx1][idx2] == []
                    @board[idx1][idx2] << card
                end
            end
        end

    end

    def render

    end
    
    def reveal(guessed_pos)

    end

    def won?
        @board.each do |row|
            row.each do |card|
                if card.hidden?
                    return false
                end
            end
        end

        return true
    end

end