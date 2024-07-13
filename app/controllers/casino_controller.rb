class CasinoController < ApplicationController
  def slots
    render ({ :template => "monaco_templates/home"})
  end


  def cards
    @rolls = []    # Create a blank array

  2.times do    # 2 times...
    die = rand(1..6)    # Generate a random number

    @rolls.push(die)    # Add the random number to the array 
  end
  
    render ({ :template => "monaco_templates/two_six"})
  end


  def bet
    @rolls = []    # Create a blank array

    2.times do    # 2 times...
      die = rand(1..10)    # Generate a random number
  
      @rolls.push(die)    # Add the random number to the array
    end

    render ({ :template => "monaco_templates/two_ten"})
  end


  def jackpot
    @rolls = []    # Create a blank array

    1.times do    # 1 times...
      die = rand(1..20)    # Generate a random number
  
      @rolls.push(die)    # Add the random number to the array 
    end

    render ({ :template => "monaco_templates/one_twenty"})
  end


  def blackjack
    @rolls = []    # Create a blank array

    5.times do    # 5 times...
      die = rand(1..4)    # Generate a random number
  
      @rolls.push(die)    # Add the random number to the array 
    end

    render ({ :template => "monaco_templates/five_four"})
  end

  def roulette
    @RANDOM_DICE = params.fetch("mika").to_i
    @RANDOM_SIDES = params.fetch("archie").to_i
   
     @rolls = []
   
       @RANDOM_DICE.times do
         die = rand(1..@RANDOM_SIDES)
   
         @rolls.push(die)
       end

       render ({ :template => "monaco_templates/archie"})

      end

end
