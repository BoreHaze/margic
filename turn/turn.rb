#container class, will delegate transition between phases, and enforce turn-based effects/statuses
class Turn
  TURN_PHASES = [
    BeginningPhase,
    MainOnePhase,
    CombatPhase,
    MainTwoPhase,
    EndingPhase
  ]

  def initialize(active_player)
    @active_player = active_player
    TURN_PHASES.each do |phase|
      @phases << phase.new
    end
    
  end

end
