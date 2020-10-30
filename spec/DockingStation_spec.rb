require 'DockingStation'

describe DockingStation do

    describe '#release_bike' do

      it 'releases a working bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(bike.working?).to eq(true)
        # we want to release a working bike we docked
        expect(subject.release_bike).to eq bike
      end
      it 'raises an error when no bikes available' do
        # lets not dock a bike first:
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end

    end

    describe '#dock(bike)' do
      it 'docks something' do
        bike = Bike.new
        # we want the dock method to return the bike we docked
        expect(subject.dock(bike)).to eq [bike]
      end
      it 'raises an error when user attempts to
        dock a bike at a full docking station' do
        DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
        expect { subject.dock(Bike.new) }.to raise_error 'Docking station full!'
      end
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      # Again, we need to return the bike we just docked
      expect(subject.bikes).to eq [bike]
    end

    # it responds to one argument
    it { DockingStation.should respond_to(:new).with(1).argument }

    it 'should have a default capacity'do
      station = DockingStation.new
      expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

end
