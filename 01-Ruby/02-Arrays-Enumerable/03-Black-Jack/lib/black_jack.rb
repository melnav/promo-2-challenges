def bank_score
  # TODO: Use Random to get a new random score
  bank_score = rand(16..21)
  return bank_score
end

def pick_card
  # TODO: Use Random to get a new random card
  pick_card = rand (1..11)
  return pick_card
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing  and then the scorethe bank
  tableau = [bank, score]
end
