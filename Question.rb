# State(Variables: date describing themselves
## Number1 and Number2, answer sum, 
# Behavior(Methods: actions that can be performed on them)
## generate two random numbers between 1 and 20 

class Question 
    attr_accessor :first_num, :second_num, :sum 
   
    def ask_question()
        @first_num = 1 + rand(20)
        @second_num = 1 + rand(20)
        @sum = @first_num + @second_num
        "What does #{first_num} plus #{second_num} equal?"
    end 

    def verify_answer(ans)
        if ans.to_i == self.sum 
            # puts "You are correct"
            true 
        else 
            # puts "You are incorrect"
            false
        end 
    end  

end 