#an abstract superclass for game zones

class Zone

  attr_reader :contained_objects

  def initialize(starting_state)
    @contained_objects = starting_state
  end
end
