require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck.rb'
require './lib/round.rb'

class RoundTest <Minitest::Test

  def test_it_exists
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_current_card
    # with this test i want to look at the current card in the deck and be able to see the attributes of that card.
  end

  def test_take_turn
    # with this test i want to make sure my take_turn method is working. I want to know that when i call take_turn that the card shows, runs a prompt to the command line and gets user input. After it gets user input i want the take_turn mathod to call the next card in the deck.
  end

  def test_number_correct_by_category
    # with this test i want to know that the method is keeping track of the cards in the category as well as what the user response is as a yes correct or no outcome.
  end

  def test_percent_correct
    # i want to make sure that this method can return the percentace of correct responses back when called upon. This method will work with the entire deck.
  end

  def test_percent_correct_by_category
    # this test will make sure the method is keeping track of the percentage correct out of the cards in the different categories
  end

  def test_turns
    #the turns method might be already in my turns file? or it **is** my turns file???
  end
end
