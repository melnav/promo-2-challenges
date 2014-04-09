require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
 player_score = 0
 player_score = player_score + pick_card
 return bank_definit_score = bank_score

 while "Yes" do
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  puts "ton score est #{player_score} et #{bank_definit_score}"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  if player_score <= 21
    puts  "card?"
    response = gets.chomp
      if response="yes"
      player_score = player_score + pick_card
  else
  end
  puts "card?"
  response = gets.chomp

  else
  end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
end



  end