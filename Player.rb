# State(Variables: date describing themselves): 
## name, life
# Behavior(Methods: actions that can be performed on them)
## decrease life 
class Player 
    attr_accessor :name, :life 

    def initialize(name,life)
        @name = name 
        @life = life
    end

    def lose_life()
        @life = @life - 1 
    end 

end

    