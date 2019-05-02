class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end
  def count
    @cards.count
  end
   def cards_in_category(blah)
     category_deck_one = []
     cards.each do |card|
       if card.category == blah
         category_deck_one << card
       end
     end
     category_deck_one
   end
end
