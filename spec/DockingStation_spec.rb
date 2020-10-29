require 'DockingStation'

describe DockingStation do

    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
      expect(bike.working?).to eq(true)
    end


    it 'docks something' do
      bike = Bike.new
      # we want the dock method to return the bike we docked
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      # Again, we need to return the bike we just docked
      expect(subject.bike).to eq bike
    end

end
