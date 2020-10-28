require 'DockingStation'

describe DockingStation do

    it 'releases a working bike' do
      station = DockingStation.new
      bike = station.release_bike
      expect(bike).to be_a_kind_of(Bike)
      expect(bike.working?).to eq(true)
    end

    it 'docks something' do
      bike = Bike.new
      # we want the dock method to return the bike we docked
      expect(subject.dock(bike)).to eq bike
    end
    
end
