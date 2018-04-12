class Game

  def phrase
    "welcome to the game"
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
