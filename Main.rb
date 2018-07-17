
require './game'
require './player'
require './question'
require './turn'


game = Game.new

while(game.alive?) 
    puts "#{game.current_player.name}"+ ":" + game.question.ask_question() 
    ans = gets.chomp()
    if game.question.verify_answer(ans) 
        puts "YES! You are correct."
    else 
        game.current_player.lose_life
    end 
    game.update_current_player
    game.life_info
    if game.alive?
        puts "--------NEW TURN--------"
    else  
        if game.player1.life > 0 
            puts "Player 1 Wins! with a score of #{game.player1.life}/3"
        else 
            puts "Player 2 Wins! with a score of #{game.player1.life}/3"
        end
        puts "-------GAME OVER--------"
    end 
end 



