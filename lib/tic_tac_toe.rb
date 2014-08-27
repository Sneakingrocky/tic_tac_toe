class TicTacToe

  def initialize 
    @gameboard = GameBoard.new
    @player1 = HumanPlayer.new("Player 1", "X")
    @player2 = HumanPlayer.new("Player 2", "O")
  end
  
  def play_game
    game_rules
    display @gameboard.board_to_s
    play_turn(@player1)
    play_turn(@player2)
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

  def play_turn(player)
    move = player.get_next_move(@gameboard)
    @gameboard.place_move(move, player.assigned_token)
  end

  def display(msg)
    puts msg
  end

end