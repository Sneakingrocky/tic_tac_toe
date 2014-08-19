class HumanPlayer

  def initialize(name)
    @name = name
  end

  def get_next_move
    display("#{@name}, what is your next move?")
    gets.chomp
  end

  def display(message)
    puts(message)
  end  
  
end  
