require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)
  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    reset_game
  end

  def play
    until @game_over
      take_turn
    end
  end

  def take_turn

  end

  def show_sequence

  end

  def require_sequence
    i = @sequence_length
    guess = []
    while i > 0
      guess << gets.chomp
      i += 1
    end
    guess
  end

  def add_random_color
    color = COLORS.sample
    color.push(sample)
  end

  def round_success_message
    puts "Congratulations, you succesfully gave the colors"
  end

  def game_over_message
    puts "Game Over!"
  end

  def reset_game
    @sequence_length = 0
    @game_over = false
    @seq = []
  end
end
