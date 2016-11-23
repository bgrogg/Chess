require_relative 'piece'
require_relative 'stepping'

class King < Piece
  include Stepping

  def initialize(color)
    super
    @symbol = (@color == :white ? " \u2654 " : " \u265A ")
  end

end
