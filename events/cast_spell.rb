require_relative "./event.rb"
class CastSpellAction < Event

  SUB_EVENTS = [
    :announce_spell,
    :place_spell_on_stack,
    :choose_modalities,
    :splice_cards_onto_spell,
    :pay_alternative_costs,
    :pay_additional_costs,
    :announce_variable_costs,
    :announce_hybird_equivalent_costs,
    :announce_phyrxian_payment_mode,
    :announce_number_of_targets,
    :announce_targets,
    :distribute_effects,
    :determine_total_cost,
    :activate_mana_abilities,
    :pay_total_cost
  ]

end
