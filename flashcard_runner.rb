require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck.rb'
require './lib/round.rb'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of  which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
card_4 = Card.new("What cohort is Kelly's favorite at Turing currently?", "1904", :Turing)

deck = Deck.new([card_1, card_2, card_3, card_4])
round = Round.new(deck)


def card_question
  deck.each.question do ||
    # puts each object in array when called until deck.count = 0

end
# how to iterate the deck cards to put them in each string where needed
#iteration block of code for string interpolation.

# make a method calling on deck.each to insert the object in the array using an until conditonal
#ex:
puts "This is card number 1 out of #{deck.count}."


puts "Welcome! You're playing with 4 cards."
puts "-------------------------------------------------"


puts "This is card number 1 out of #{deck.count}."
p "#{card_1.question}"
guess = gets.chomp
if guess == card_1.answer
  p "#{round.feedback}"
end
p "This is card number 2 out of #{deck.count}."
p "#{card_2.question}"
guess = gets.chomp
if guess == card_2.answer
  p "#{round.feedback}"
end


p "This is card number 3 out of #{deck.count}."
p "#{card_3.question}"
guess = gets.chomp
if guess == card_3.answer
  p round.feedback
end

p "This is card number 4 out of #{deck.count}."
p "#{card_4.question}"
guess = gets.chomp
guess.capitalize
Turn.feedback

p "You had #{round.number_correct} correct guesses out of #{round.turns.count} for a total score of #{round.percent_correct}."
