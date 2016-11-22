class Piece

  attr_accessor :position

  def initialize
    @position = [nil, nil]
  end

  def []=(pos, piece)
    row, col = pos
    board[row][col] = piece
  end

  def [](pos)
    row, col = pos
    board[row][col]
  end

  def position=(position)
    @position = position
  end

end

class Nulpiece < Piece
  def initialize
  end
end

class King < Piece

  def initialize
    super
  end
end

class Queen < Piece
  def initialize
    super
  end
end

class Knight < Piece
  def initialize
    super
  end
end

class Bishop < Piece
  def initialize
    super
  end
end

class Rook < Piece
  def initialize
    super
  end
end

class Pawn < Piece
  def initialize
    super
  end
end
