require 'spec_helper'

RSpec.describe Car do
  let(:car) { Car.new }

  describe '::new' do
    it 'sets the speed to 0' do
      expect(car.speed).to eq 0
    end
  end

  describe '#speed' do
    it { is_expected.to respond_to :speed }
  end

  describe '#accelerate' do
    before { car.accelerate(20) }

    it 'accelerates by a given speed' do
      expect(car.speed).to eq 20
    end
  end
end