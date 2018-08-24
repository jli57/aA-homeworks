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
    if @game_over
      game_over_message
      reset_game
    end
  end

  def take_turn
    show_sequence
    guess = require_sequence
    if guess == @seq
      round_success_message
      @sequence_length += 1
  end

  def show_sequence
    @seq.each do |color|
      puts color.colorize(color.to_sym)
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    i = @sequence_length
    guess = []
    while i > 0
      print "Guess Color \##{i}: "
      guess << gets.chomp
      i -= 1
    end
    guess
  end

  def add_random_color
    color = COLORS.sample
    @seq.push(color)
  end

  def round_success_message
    puts "Congratulations, you succesfully gave the colors"
  end

  def game_over_message
    puts "Game Over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
