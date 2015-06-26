#abstract superclass for turn phases
class Phase

  def initialize(steps)
    steps.each do |step|
      @steps << step.new
    end
  end

end
