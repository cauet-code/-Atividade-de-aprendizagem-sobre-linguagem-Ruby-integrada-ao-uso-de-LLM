class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  player1_name, player1_strategy = game[0]
  player2_name, player2_strategy = game[1]

  unless ["R", "P", "S"].include?(player1_strategy.upcase) && ["R", "P", "S"].include?(player2_strategy.upcase)
    raise NoSuchStrategyError
  end

  player1_strategy = player1_strategy.upcase
  player2_strategy = player2_strategy.upcase

  if player1_strategy == player2_strategy
    return game[0]
  elsif (player1_strategy == "R" && player2_strategy == "S") || \
          (player1_strategy == "S" && player2_strategy == "P") || \
          (player1_strategy == "P" && player2_strategy == "R")
    return game[0]
  else
    return game[1]
  end
end

def rps_tournament_winner(tournament)
  if tournament[0].is_a?(String)
    return tournament
  else
    if tournament[0][0].is_a?(String)
      return rps_game_winner(tournament)
    else
      winner1 = rps_tournament_winner(tournament[0])
      winner2 = rps_tournament_winner(tournament[1])
      return rps_game_winner([winner1, winner2])
    end
  end
end


