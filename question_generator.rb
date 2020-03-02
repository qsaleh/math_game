class Question
attr_accessor :correct_answer
  def initialize
    @int_array = *(1..20)
    @operator_array = ['plus', 'minus']
  
  end

  def random_question
    random_number_1 = @int_array.sample
    random_number_2 = @int_array.sample
    operator = @operator_array.sample
    if operator == 'plus'
      @correct_answer = random_number_1 + random_number_2
    else
      @correct_answer = random_number_1 - random_number_2
    end
    "What does #{random_number_1} #{operator} #{random_number_2} equal?"
  end
  
end

