require_relative 'board.rb'
require_relative 'display.rb'

class Game

  def initialize
    @board = Board.new
    @display = Display.new (@board)
  end

  def display
    @display.render
  end
end
