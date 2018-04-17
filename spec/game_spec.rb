require './lib/game.rb'

describe Game do

  context '#phrase' do
    it 'puts my string' do
      expect(subject.phrase).to eq('Welcome to the RPS game. Choose rock, paper or scissors')
    end
  end

  context '#confirmation' do
    it 'returns one choice or another depending on the stub' do
      allow(subject).to receive(:gets) { 'rock' }
      expect(subject.confirmation).to eq('You chose rock')

    end
  end

  context "#pc_move" do
    before { srand(0) }
    it "It receives a random choice from the computer" do
      expect(subject.pc_move).to eq('rock')
    end
  end

  context "#tell_winner" do
      before { srand(0) }
    it "It tells who wins" do
      allow(subject).to receive(:gets) { 'rock' }
      subject.confirmation
      subject.pc_move
      expect(subject.tell_winner).to eq('Draw')
    end
  end

end
