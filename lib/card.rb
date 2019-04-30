#methods to add into cards
# .question
# .answer
# .category

class Card
  attr_accessor :category, :question, :answer

  def initialize(question, answer, category)
    @category = category
    @question = question
    @answer = answer
  end
end

# add in string interpolation for the project. Reference notes.

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

#for multiple choice questions use the same format that i would use with the ltrhw example on choose your own adventure for choices.

######### LOOK HERE KELLY! Make a hash of card variables for each category!!! #########
# for card variables make sure to set each variable to the question as well as the answer.
#for multiple choice questions add a series of answers with a .random method for the card itself

#give skip option on flashcards
#Keep tally of cards that are correct and cards that are Incorrect
