require_relative 'Bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    # use an instance varaible to store the bike in the state of this instance
    fail 'Docking station full!' unless @bike.nil?
    @bike = bike
  end

end
