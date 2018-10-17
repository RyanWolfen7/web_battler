require 'player'

describe Player do
  subject(:ryan) { Player.new('Ryan')}

  describe '#name' do
    it 'should output a character name' do
      expect(ryan.name).to eq 'Ryan'
    end
  end
end
