class GameBoard

 WINNING_COMBOS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  def initialize
    @cells = [nil] * 9
  end

  def place_move(cell_number, token)
    @cells[cell_number - 1] = token
  end

  def board_to_s
    " #{cell_display_value(1)} | #{cell_display_value(2)} | #{cell_display_value(3)} \n" +
    "-----------\n" +
    " #{cell_display_value(4)} | #{cell_display_value(5)} | #{cell_display_value(6)} \n" +
    "-----------\n" +
    " #{cell_display_value(7)} | #{cell_display_value(8)} | #{cell_display_value(9)} "
  end

  def cell_display_value(cell_number)
    at_location(cell_number) || cell_number
  end

  def at_location(cell_number)
    @cells[cell_number - 1]
  end

  def three_in_a_row?
    WINNING_COMBOS.each do |combo|
      if spaces_occupied_by_one_player?(combo)
        return true
      end  
    end
    return false
  end

  def spaces_occupied_by_one_player?(combo)
    at_location(combo[0]) == at_location(combo[1]) && 
      at_location(combo[1]) == at_location(combo[2]) &&
      at_location(combo[0]) != nil 
  end

  def game_is_a_draw?
    !three_in_a_row? && @cells.all? { |cell| cell != nil }   
  end

end 
