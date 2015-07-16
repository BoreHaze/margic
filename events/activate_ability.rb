require_relative "./event.rb"
class ActivateAbilityAction < Event

  SUB_EVENTS = [
    :announce_activation,
    :reveal_source_if_hidden,
    :instantiate_ability_stack_object,
    :place_ability_on_stack,
    :choose_modalities,
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
