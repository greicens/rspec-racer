require 'spec_helper'

RSpec.describe Car do
   let(:car) { Car.new }

  describe '::new' do
    it 'sets the initial speed of a car to 0' do
      expect(car.speed).to eq 0
    end
  end

  describe '#speed' do
    it { is_expected.to respond_to :speed }
  end

  describe '#accelerate' do
    before {car.accelerate(20)}
    it 'increases the speed of car by a given amount' do
      expect( car.speed ).to eq 20
    end
  end
end
