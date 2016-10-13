deck = []
suits = %w[hearts clubs diamonds spades]
values = %w[ace 2 3 4 5 6 7 8 9 10 jack queen king]

suits.each do |suit|
  values.each do |value|
    deck << "#{value} of #{suit}"
  end
end

deck.shuffle!
p deck

puts "how many players?"
players = gets.chomp.to_i

def deal_cards(num_players, num_cards, deck)
  num_cards.times do
    for i in 1..num_players
      puts "Player #{i}, your card is #{deck.pop}"
    end
  end
end

deal_cards(players, 2, deck)
p deck
