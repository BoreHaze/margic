Game state machine:
- object registry
- zone registry
- turn/phase/step pointers
- priority pointer
- event queue
- replacement effect checker
- static effect registry
- continuous effect registry
- one-shot effect registry
- trigger registry
- text-change registry
- target legality checker
- attacker legality checker
- blocker legality checker
- token factory
- counter factory
- stack item factory
- player input interface


Game state machine algorithm:
- start game, initialize state machine
- start at p1 upkeep
- loop:
  1. push next turn based action from current step onto event queue
  2. process turn based action
  3. return to 1 unless a player has priority
  4. check for and apply any replacement effects
  5. get input from active player, push to event queue
  6. check trigger registry against event, push to event queue if anything triggers
  7. return to 4 unless no player has priority
  8. check for end of step/phase triggers or effects, process event, process replacement effects.
