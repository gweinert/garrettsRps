module GarrettsRps

  class Computer

    def initialize
      @name = "Computer"
    end

    def name
      @name
    end

    def get_input
      choices = ["rock", "paper", "scissors"]
      choices.sample
    end

  end

end