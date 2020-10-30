require_relative 'Bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    # use an instance varaible to store the bike in the state of this instance
    fail 'Docking station full!' if full?
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
