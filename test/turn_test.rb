require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Colorado?", "Denver", :Geography)
    turn = Turn.new("Denver", card)

    assert_instance_of Turn, turn
  end

  def test_it_has_a_guess
    card = Card.new("What is the capital of Colorado?", "Denver", :Geography)
    turn = Turn.new("Denver", card)

    assert_equal "Denver", turn.guess
  end

  def test_it_has_a_card
    card = Card.new("What is the capital of Colorado?", "Denver", :Geography)
    turn = Turn.new("Denver", card)

    assert_equal card, turn.card

  end

  def test_it_is_correct?
    card = Card.new("What is the capital of Colorado?", "Denver", :Geography)
    turn = Turn.new("Denver", card)

    assert_equal true, turn.correct?
  end

  def test_it_is_incorrect?
    card = Card.new("What is the capital of Colorado?", "Denver", :Geography)
    turn = Turn.new("Miami", card)

    assert_equal false, turn.correct?
  end

  def test_it_gives_correct_feedback
    card = Card.new("What is the capital of Colorado?", "Denver", :Geography)
    turn_1 = Turn.new("Denver", card)
    turn_2 = Turn.new("Jacksonville", card)
    binding.pry
    assert_equal "Correct!", turn_1.feedback
    assert_equal "Incorrect!", turn_2.feedback

  end
end
