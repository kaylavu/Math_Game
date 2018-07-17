# State(Variables: date describing themselves)
# stores the players, current_player, questions, answer 
# Behavior(Methods: actions that can be performed on them)
require './player'

class Game 
    attr_accessor :player1, :player2, :current_player, :alive, :question
  
    def initialize
        @player1 = Player.new("Player 1",3)
        @player2 = Player.new("Player 2",3)
        @question = Question.new()
        @current_player = @player1
        @alive = true
        # puts "we are in game constructor ", @player1
    end 

    def alive?
        # puts "checking alive method"
        if @player1.life > 0 && @player2.life > 0 
            self.alive = true 
        else 
            self.alive = false 
        end 
    end

    def update_current_player() 
        if self.current_player == @player1 
            self.current_player = @player2
        else
            self.current_player = @player1 
        end 
    end 

    def life_info()
        puts "P1: #{@player1.life}/3 VS. P2:#{@player2.life}/3"
    end 

    #game needs to ask question then verify the answer
    #if verify_answer is incorrect decrease life of current Player AND THEN update_current_player
    # else if verify_answer is correct JUST update_current_player    

end 