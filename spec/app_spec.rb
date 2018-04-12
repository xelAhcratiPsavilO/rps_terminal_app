require './lib/app.rb'

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

end
