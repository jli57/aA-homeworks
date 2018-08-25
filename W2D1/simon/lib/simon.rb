require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)
  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    reset_game
  end

  def play
    system("clear")
    print "Let the games begin! Remember the color sequence and guess the colors in order."
    sleep(1.5)
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
    unless @game_over
      puts ""
      round_success_message
      @sequence_length += 1
      sleep(1)
    end
  end

  def show_sequence
    system("clear")
    add_random_color
    @seq.each do |color|
      puts color.colorize(color.to_sym)
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    @seq.each_with_index do |color, ind|
      print "Guess Color \##{ind+1}: "
      guess = gets.chomp.strip
      if color != guess
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    color = COLORS.sample
    @seq.push(color)
  end

  def round_success_message
    puts "Congratulations, you guessed the colors in the correct order!"
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
