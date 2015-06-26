require_relative 'phase.rb'

class CombatPhase < Phase
  STEPS = [
    BeginCombat,
    DeclareAttackers,
    DeclareBlockers,
    CombatDamage,
    EndOfCombat
  ]

  def initialize
    super(STEPS)
  end

end
