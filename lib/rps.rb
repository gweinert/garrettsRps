require "rps/version"
require "rps/player"
require "rps/computer.rb"

module GarrettsRps
  
  class RockPaperScissors

    def initialize
      @player = Player.new("player1")
      prompt_player
      play_against_computer?
      play
    end

    def does_p1_win?(player_input, computer_input)
      if player_input == "rock" && computer_input == "scissors"
        return true
      elsif player_input == "scissors" && computer_input == "paper"
        return true
      elsif player_input == "paper" && computer_input == "rock"
        return true
      elsif player_input == computer_input
        return false
      else
        false
      end
    end

    def tie? (player_input, computer_input)
      if player_input == computer_input
        return true
      else
        return false
      end
    end

    def prompt_player  #intro & rules
      puts "Rock, paper, scissors game!"
    end

    def play_against_computer?
      puts "Play against computer?"
      print ">>"
      input = gets.chomp
      if input == "yes"
        @player2 = Computer.new
      else
        @player2 = Player.new("player2")
      end
    end

    def play

      p_choice = @player.get_input
      puts "#{@player.name} picks #{p_choice}."

      c_choice = @player2.get_input
      puts "#{@player2.name} picks #{c_choice}."

      if tie?(p_choice, c_choice)
        puts "It's a tie!"
      elsif does_p1_win?(p_choice, c_choice)
        puts "#{@player.name} wins!"
      else
        puts "#{@player2.name} wins!"
      end

    end

  end

end
