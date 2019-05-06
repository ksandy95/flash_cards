class Round
  attr_reader :deck, :turns, :count, :cards, :current_card, :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @count = 0
    @number_correct = 0
    @current_card = deck.cards.first
  #  @cards_in_category = cards_in_category

  end

  def take_turn(guess)
    @current_card = @deck.cards.shift
    turn = Turn.new(guess, @current_card)
    @turns << turn
    if turn.correct?
      @number_correct += 1
    end
    turn
  end

  def number_correct_by_category(category)
    @turns.find_all do |turn|
    turn.correct? && turn.card.category == category
    end.count
  end

  # def cards_in_category
  #   category_deck_one = []
  #   cards.each do |card|
  #     if card.category == blah
  #       category_deck_one << card
  #     end
  #   end
  # end

  def percent_correct
    (@number_correct / @turns.count.to_f) * 100
  end

  def percent_correct_by_category(category)
    (number_correct_by_category(category) / @turns.find_all.count) * 100
  end
end
