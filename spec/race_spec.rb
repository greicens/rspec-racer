require 'spec_helper'

RSpec.describe Race do
  let(:cars) { [Car.new, Car.new] }
  let(:race) { Race.new }

  describe '::new' do
    it 'instantiates two cars' do
      expect(cars.count).to eq 2
    end

    it 'accelerates the cars to random speeds' do
      expect(race.cars.first.speed).not_to be == race.cars.last.speed
    end
  end
  describe '#winner' do
    it 'returns the winner' do
      expect(race.winner).to be_a Car
    end
    it 'is not the loser' do
      expect(race.winner).not_to eq race.loser
    end
  end

  describe '#loser' do
    it 'returns the loser' do
      expect(race.loser).to be_a Car
    end
    it 'is not the winner' do
      expect(race.loser).not_to eq race.winner
    end

  end
end
