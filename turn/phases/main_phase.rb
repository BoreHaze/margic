require_relative 'phase.rb'

class MainPhase < Phase
  #There is technically no "Main" step afaik, but this will probalby be a necessary invention
  STEPS = [ Main ]

  def initialize
    super(STEPS)
  end

end

class MainOnePhase < MainPhase; end

class MainTwoPhase < MainPhase; end
