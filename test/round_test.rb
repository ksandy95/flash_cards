require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck.rb'
require './lib/round.rb'

class RoundTest <Minitest::Test

  def test_it_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_it_has_no_turns_at_start
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)


    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)

    assert_equal [], round.turns

  end

  def test_current_card
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)

    assert_equal card_1, round.current_card

  end

  def test_take_turn
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)

    turn_1 = round.take_turn("Juneau")

    assert_equal true, turn_1.correct?
    assert_equal "Juneau", turn_1.card.answer
    assert_equal Turn, turn_1.class
#hacky solve for test, look into turn 1
# No visible difference in the Turn#inspect output. <-- error message
    assert_equal "Juneau",  round.turns.first.card.answer
  end

  def test_number_correct
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)
    assert_equal 0, round.count
    turn_1 = round.take_turn("Juneau")
    assert_equal 1, round.number_correct

  end

  def test_take_next_turn
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)

    turn_1 = round.take_turn("Juneau")
    assert_equal "Juneau",turn_1.card.answer
    assert_equal card_2, round.current_card
  end

  def test_turns_last_feedback
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)
    turn_1 = round.take_turn("Miami")

    assert_equal "Incorrect!", round.turns.last.feedback
  end

  def test_number_correct_by_category
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)
    turn_1 = round.take_turn("Juneau")

    assert_equal 1, round.number_correct_by_category(:Geography)
  end

  def test_percent_correct

    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new([card_1, card_2, card_3 ])
    round = Round.new(deck)
    turn_1 = round.take_turn("Juneau")

    assert_equal 50.0, round.percent_correct

  end
end
