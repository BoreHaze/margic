require_relative "./game_card.rb"
class Permanent < MtgObject
  def initialize(options)
    @tapped = options["tapped"] || :untapped

    if options["card"]
      @card = options["card"]
    elsif options["card_copy"]
      @card = options["card_copy"]
      @card_copy = true
    else
      @token = options["token"]
    end

    if options["facedown"]
      @facedown = true
    else
      @facedown = false
    end
    

    super(options)
  end
end
