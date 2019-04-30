#methods to add into cards
# .question
# .answer
# .category

class Card
  attr_reader :category, :question, :answer

  def initalize(category, question, answer)
    @category = category
    @question = question
    @answer = answer
end

#create card as an object? or as a method to add in under category.
#It doesn't make sense to have flashcards as listed with just category.
#Would it make more sense to change the methods on the cards to .front and .back instead of
# question and answer? Or does the distinction not really matter?
#If i am getting user input for multiple choice cards should i separate those from the group as well?
# Think about how to add a way for the user to add in cards of their own.
# what would that look like? What would that process look like to save user information?
# Think about if things in the card.rb file should instead move to the turns.rb file.
# When im adding categories to cards how do i want to go about doing that?
# what does it look like to tie the new card object to its specific category?
# look at some examples with other types of category projects for reference.


Card :: @category.new("French Vocabulary")
category << card1
category << card2
category << card3
category << card4
category << card5
category << card6
category << card7
category << card8
category << card9
category << card10
Card :: @category.new("Under The Sea")
category << card11
category << card12
category << card13
category << card14
category << card15
category << card16
category << card17
category << card18
category << card19
category << card20
Card :: @category.new("Italian Art History")
category << card21
category << card22
category << card23
category << card24
category << card25
category << card26
category << card27
category << card28
category << card29
category << card30
Card :: @category.new("Bar Trivia")
category << card31
category << card32
category << card33
category << card34
category << card35
category << card36
category << card37
category << card38
category << card39
category << card40
Card :: @category.new("Language of Flowers")
category << card41
category << card42
category << card43
category << card44
category << card45
category << card46
category << card47
category << card48
category << card49
category << card50

card1
card2
card3
card4
card5
card6
card7
card8
card9
card10
card11
card12
card13
card14
card15
card16
card17
card18
card19
card20
card21
card22
card23
card24
card25
card26
card27
card28
card29
card30
card31
card32
card33
card34
card35
card36
card37
card38
card39
card40
card41
card42
card43
card44
card45
card46
card47
card48
card49
card50
