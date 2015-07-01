
module GarrettsRps

  class Player

    def initialize(name)
      @name = name
    end

    def name
      @name
    end

    def get_input #checks with get_input
      print "#{self.name}>>"
      input = gets.strip
      until valid_input? (input)
        puts "Please choose: rock, paper, or scissors."
        print ">>"
        input = gets.chomp
      end
      input
    end

    def valid_input? (input)#if not, get_input again
      choices = ["rock", "paper", "scissors"]
      if choices.include? input
        true
      else
        false
      end
    end

  end

end