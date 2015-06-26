require_relative 'phase.rb'

class BeginningPhase < Phase
  STEPS = [
    Untap,
    Upkeep,
    Draw
  ]

  def initialize
    super(STEPS)
  end
  
end
