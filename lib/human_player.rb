class HumanPlayer
  VALID_MOVES = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  attr_reader :assigned_token

  def initialize(name, assigned_token, input: STDIN, output: STDOUT)
    @name = name
    @assigned_token = assigned_token
    @input = input
    @output = output
  end

  def get_next_move
    move = ask_for_move

    if valid_move?(move)
      return move
    else
      display("That is an invalid grid spot, please choose an open grid space 
              with the corresponding number 1, 2, 3, 4, 5, 6, 7, 8, 9")
      get_next_move
    end
  end

  private

  def ask_for_move
    display("#{@name}, what is your next move?")
    @input.gets.chomp.to_i
  end

  def valid_move?(move)
    VALID_MOVES.include?(move)
  end

  def display(message)
    @output.puts(message)
  end  

end 