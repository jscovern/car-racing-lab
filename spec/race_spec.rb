require 'spec_helper'
# require '../lib/race'

RSpec.describe Race do
  subject(:race) {Race.new}
  describe '::new' do
    it 'instantiates two cars' do
      expect(race.cars.length).to eq(2)
    end
    it 'accelerates the cars to random speeds' do
      expect(race.cars[0].speed).to_not eq(race.cars[1].speed)
    end
    it 'speed is not greater than 100 for either car' do
      expect(race.cars[0].speed).to be <= 100
      expect(race.cars[1].speed).to be <= 100
    end
  end
  describe '#winner' do
    it 'returns the winner' do
      expect(race.winner.speed).to be > (race.loser.speed)
    end
    it 'is not the loser' do
      expect(race.winner).to_not eq(race.loser)
    end
  end

  describe '#loser' do
    it 'returns the loser' do
      expect(race.loser.speed).to be < (race.winner.speed)
    end
    it 'is not the winner' do
      expect(race.loser).to_not eq(race.winner)
    end
  end
end
