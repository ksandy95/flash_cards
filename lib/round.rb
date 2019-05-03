class Round
  attr_reader :deck, :turns, :count

  def initialize(deck)
    @deck = deck
    @turns = []
    @count = 0
  end

  def current_card

    @deck.cards[@turns.count]
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    if turn.correct?
      @count += 1
    end
    return turn
  end

  def number_correct
    @count
  end

  def number_correct_by_category(category)
    #### review and understand in AM
    @turns.find_all do |turn|
    turn.correct? && turn.card.category == category
    end.count

  end

  def percent_correct
    

  end
end
