require_relative 'Bike'

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    # use an instance varaible to store the bike in the state of this instance
    @bike = bike
  end


end
