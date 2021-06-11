require './lib/player'

describe Player do
    subject(:mike) { Player.new('mike') }
    subject(:arch) {Player.new('Arch Nemesis')}
    describe '#name' do
      it 'returns the name' do
        expect(mike.name).to eq 'mike'
      end
    end
    describe '#hit_points' do
      it 'returns the hit points' do
          expect(mike.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    describe '#attack' do
      it 'damages the player' do
        expect(mike).to receive(:receive_damage)
        arch.attack(mike)
      end
    end

    describe '#receive_damage' do
        it 'reduces the player hit points' do
          expect { mike.receive_damage }.to change { mike.hit_points }.by(-10)
        end
      end
    


  end