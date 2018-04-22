class Game

  def phrase
    p "Welcome to the RPS game. Choose rock, paper or scissors"
  end

  def confirmation_human
    @human = move
    "You chose #{@human}"
  end

  def pc_move
    random_choice = rand(3)
    p random_choice
    if random_choice == 0
      @pc = 'rock'
    elsif random_choice == 1
      @pc = 'paper'
    else
      @pc = 'scissors'
    end
  end

  def tell_winner
    confirmation_pc
    p @human
    p @pc
    if @human == @pc
      p 'Draw'
    elsif @human == 'rock' && @pc == 'paper'
      p 'You lost'
    elsif @human == 'rock' && @pc == 'scissors'
      p 'You won'
    elsif @human == 'paper' && @pc == 'scissors'
      p 'You lost'
    elsif @human == 'paper' && @pc == 'rock'
      p 'You won'
    elsif @human == 'scissors' && @pc == 'rock'
      p 'You lost'
    elsif @human == 'scissors' && @pc == 'paper'
      p 'You won'
    end
  end

  private

  def move
    gets.chomp
  end

  def confirmation_pc
    p "Your opponent chose #{@pc}"
  end

end
