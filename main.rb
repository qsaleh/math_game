require './question_generator'
require './player'

q = Question.new
current_player = 1

while @players[0][:lives_remaining] != 0 && @players[1][:lives_remaining] != 0
  if current_player == 1
    current_player = 0
  else
    current_player = 1
  end

  puts "----- NEW TURN -----"
  puts "#{@players[current_player][:player]}: #{q.random_question}"
  print "> "
  player_answer = gets.chomp.to_i

  if player_answer == q.correct_answer
    puts 'YES! You are correct.'
  else
    puts 'Seriously? NO!'
    @players[current_player][:lives_remaining] -= 1
  end
  
  puts "#{@players[0][:player]}: #{@players[0][:lives_remaining]}/3 vs. #{@players[1][:player]}: #{@players[1][:lives_remaining]}/3"
  end
  
  if @players[0][:lives_remaining] == 0
    winner = 1
  else
    winner = 0
  end

puts "Player #{winner + 1} wins with a score of #{@players[winner][:lives_remaining]}/3"
puts "----- GAME OVER -----\nGood bye!"