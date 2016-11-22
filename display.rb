require_relative "board.rb"
require_relative "game.rb"

class Display

  def initialize(board)
    @board = board

  end

  def render
    new_board = @board.dup
    puts "#{new_board[[0,0]]} #{new_board[[0,1]]}"
  end

end
