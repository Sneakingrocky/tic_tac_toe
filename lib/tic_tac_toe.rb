class TicTacToe

  def initialize 
    @gameboard = GameBoard.new
    @player1 = HumanPlayer.new("Player 1")
    @player2 = HumanPlayer.new("Player 2")
  end
  
  def play_game
    display @gameboard.to_s
    @player1.get_next_move
    @player2.get_next_move
  end

  def display(msg)
    puts msg
  end
  
end