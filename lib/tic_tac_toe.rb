class TicTacToe

  def initialize 
    @gameboard = GameBoard.new
    @player1 = HumanPlayer.new("Player 1")
    @player2 = HumanPlayer.new("Player 2")
  end
  
  def play_game
    game_rules
    display @gameboard.board_to_s
    @player1.get_next_move
    @player2.get_next_move
  end

  def game_rules
    display("Welcome to Tic Tac Toe! 
      
      Here is how you play: 

      Player 1 = X
      Player 2 = O

      You will take turns choosing the section number of the grid 
      that you wish to place your assigned letter. The first player to
      succeed in placing three respective marks in a horizontal, vertical, 
      or diagonal row wins the game.

    ")
  end

  def display(msg)
    puts msg
  end

end