class GameBoard

  def initialize
    @cells = [nil] * 9
  end

  def place_move(cell_number, token)
    @cells[cell_number - 1] = token
  end

  def board_to_s
    " #{cell_to_s(1)} | #{cell_to_s(2)} | #{cell_to_s(3)} \n" +
    "-----------\n" +
    " #{cell_to_s(4)} | #{cell_to_s(5)} | #{cell_to_s(6)} \n" +
    "-----------\n" +
    " #{cell_to_s(7)} | #{cell_to_s(8)} | #{cell_to_s(9)} "
  end

  def cell_to_s(cell_number)
    at_location(cell_number) || cell_number
  end

  def at_location(cell_number)
    @cells[cell_number - 1]
  end  

end 
