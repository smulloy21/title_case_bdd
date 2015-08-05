class String
  define_method(:beats?) do |player2|
    player1 = self
    if player1 == player2
      winner = "You have tied."
    elsif (player1=="rock"&&player2=="scissors") || (player1=="paper"&&player2=="rock") || (player1=="scissors"&&player2=="paper")
      winner = "Player 1 is the winner!"
    else
      winner = "Player 2 is the winner!"
    end
  end
end
