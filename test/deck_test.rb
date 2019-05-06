require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck.rb'

class DeckTest < Minitest::Test


  def test_it_exists

    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    deck = Deck.new([card, card_2])
    assert_instance_of Deck, deck
  end

  def test_cards_in_category
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    deck = Deck.new([card, card_2])

    assert_equal [card_2], deck.cards_in_category(:STEM)
  end

  def test_count
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    deck = Deck.new([card, card_2])

    assert_equal 2, deck.count
  end
end
