require 'player'

describe Player do
  subject(:ryan) { Player.new('Ryan')}
  subject(:dave) { Player.new('Dave')}

  describe '#name' do
    it 'should output a player name' do
      expect(ryan.name).to eq 'Ryan'
    end
  end

  describe '#hit_points' do
    it 'should have hit points' do
      expect(ryan.hp).to eq described_class::DEFAULT_HP
      expect(dave.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(dave).to receive(:receive_damage)
      ryan.attack(dave)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hp' do
      expect { dave.receive_damage }.to change { dave.hp}.by(-10)
    end
  end
end
