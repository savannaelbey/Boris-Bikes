require 'DockingStation'

describe DockingStation do
  it { should respond_to(:release_bike) }

  describe '#release_bike' do
    it 'releases a working bike' do
      station = DockingStation.new
      bike = station.release_bike
      expect(bike).to be_a_kind_of(Bike)
      expect(bike.working?).to eq(true)
    end
  end
end
