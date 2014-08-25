class GameBoard

  def initialize
    @cells = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
  end

  def place_move(cell_number, token)
    @cells[cell_number - 1] = token
  end

  def board_to_s
    " 1 | 2 | 3 \n" +
    "-----------\n" +
    " 4 | 5 | 6 \n" +
    "-----------\n" +
    " 7 | 8 | 9 "
  end

  def at_location(cell_number)
    @cells[cell_number - 1]
  end  

end 
