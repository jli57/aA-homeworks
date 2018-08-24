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

  end

  def add_random_color

  end

  def round_success_message

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
