require_relative "./mtg_object.rb"
class Player < MtgObject
  def initialize(options)
    @name = options["name"]
    @life = 20
    @deck = options["deck"]
  end
end
