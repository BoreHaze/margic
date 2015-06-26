require_relative 'phase.rb'

class EndingPhase < Phase
  STEPS = [
    End,
    Cleanup
  ]

  def initialize
    super(STEPS)
  end

end
