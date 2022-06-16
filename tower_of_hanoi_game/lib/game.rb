require "byebug"

class Game
  attr_reader :stack

  def initialize
    @stack = Array.new(3){Array.new}
    @stack[0] = [4,3,2,1]
  end

  def move
    input = gets.chomp.split(" ")
    starting_row = input[0]
    destination_row = input[1]
    disc = @stack[starting_row].pop

    if disc > @stack[destination_row[-1]]
      raise  "CANNOT PUT HERE"
      # retry
    else 
      destination_row.push(disc)
    end

    return true
  end



end
