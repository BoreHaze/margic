require_relative 'mtg_object.rb'
require_relative '../card.rb'

class GameCard < MtgObject
  attr_reader :card
  def initialize(options)
    @card = options["card"]
    super(options)
  end
end
