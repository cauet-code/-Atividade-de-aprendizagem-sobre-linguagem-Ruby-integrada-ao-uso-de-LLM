class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  player1_name, player1_strategy = game[0]
  player2_name, player2_strategy = game[1]

  unless ['R', 'P', 'S'].include?(player1_strategy.upcase) && ['R', 'P', 'S'].include?(player2_strategy.upcase)
    raise NoSuchStrategyError
  end

  player1_strategy = player1_strategy.upcase
  player2_strategy = player2_strategy.upcase

  if player1_strategy == player2_strategy
    return game[0]
  elsif (player1_strategy == 'R' && player2_strategy == 'S') || \
          (player1_strategy == 'S' && player2_strategy == 'P') || \
          (player1_strategy == 'P' && player2_strategy == 'R')
    return game[0]
  else
    return game[1]
  end
end


