class Event

  def initialize()
  end

end

#Events can be arbitrarily nested, i.e. the resolution of one event may involve numerous other events.

#Not sure where these all will live, just listing them here for now

KEYWORD_EVENTS = [
  :activate, :attach, :cast, :counter, :destroy, :discard, :exchange, :exile, :fight, :play, :regenerate, :reveal, :sacrifice, :search, :shuffle, :tap, :untap, :scry, :fateseal, :clash, :proliferate, :transform, :detain, :populate, :vote, :monstrosity, :bolster, :manifest
]

TURN_BASED_ACTIONS = {
  :beginning_phase => {
    :untap_step => [:phase_in, :phase_out, :untap_permanents],
    :upkeep     => [:receive_priority],
    :draw_step  => [:draw_for_turn, :receive_priority]
  },

  :main_one_phase => {
    :main_step => [:receive_priority]
  },

  :combat_phase => {
    :begin_combat_step      => [:receive_priority],
    :declare_attackers_step => [:declare_attackers,
                                :receive_priority],
    :declare_blockers_step  => [:declare_blockers,
                                :declare_blocking_order,
                                :declare_multi_blocker_order,
                                :receive_priority],
    :combat_damage_step     => [:assign_combat_damage,
                                :deal_combat_damage,
                                :receive_priority],
    :end_combat_step        => [:receive_priority]
  },

  :main_two_phase => {
    :main_step => [:receive_priority]
  },


  :ending_phase => {
    :end_step     => [:receive_priority],
    :cleanup_step => [:discard_to_handsize,
                      :eot_remove_damage,
                      :eot_effects_end]
  },

  :all_phases => {
    :all_steps => [:mana_pool_empties]
}

STATE_BASED_ACTIONS = [
  :lose_game_at_zero_or_less_life,
  :lose_game_on_draw_from_empty_library,
  :lose_game_at_ten_or_more_poison,
  :token_leaves_battlefield,
  :spell_leaves_stack,
  :card_copy_leaves_stack_or_battlefield,
  :creature_at_zero_or_less_toughness,
  :creature_damage_greater_than_toughness,
  :creature_dealt_deathtouch_damage,
  :planeswalker_loyalty_at_zero,
  :planeswlker_uniqueness_violation,
  :legendary_permanent_uniquness_violation,
  :world_permanent_uniqueness_violation,
  :aura_attached_to_illegal_object,
  :aura_attached_to_nothing,
  :equipment_attached_to_illegal_permanent,
  :non_aura_or_equipment_attached_to_objct,
  :permanent_has_plus_and_minus_counters,
  :permanent_has_greater_than_n_counters
]

SPECIAL_ACTIONS = [
  :play_land,
  :flip_permanent_face_up,
  :suspend_card,
  :pay_delayed_trigger_cost,
  :pay_continuous_effect_cost,
  :pay_static_effect_cancellation_cost
]
