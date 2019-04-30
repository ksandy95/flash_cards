class Turn
attr_reader :guess, :card
  def initialize (guess, card)
    @guess = guess
    @card = card
  end
  def correct?
    if @guess == true
      puts "Correct"
    else
      puts "False"
    end
  def feedback
    if correct? == true
      puts "Correct!"
    else
      puts "Incorrect!"
    end
  end
end
