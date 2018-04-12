class Game

  def phrase
    "Welcome to the RPS game. Choose rock, paper or scissors"
  end

  def confirmation
    choice = move
    "You chose #{choice}"
  end

  private

  def move
    gets
  end

end
