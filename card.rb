#This will be a back end, static representation of a card; will be pointed to by a wrapper card object in game which will have to track state
class Card
  def initialize(card_data)

    attr_reader :name, :cost_str, :cmc, :type_string, :supertypes, :types, :subtypes, :text

    @name = card_data["name"]

    #string rep of cost, of form "{2}{W}{U}{B}"
    @cost_str = card_data["manaCost"]

    #int
    @cmc = card_data["cmc"]

    #array
    @colors = card_data["colors"]

    #prob only for representation
    @type_string = card_data["type"]

    #array, possible (game relevant) vals = ["legendary", "basic", "snow", "world" ]
    @supertypes = card_data["supertypes"]

    #array of core card types
    @types = card_data["types"]

    #array of subtypes i.e. creature types, planeswalker types, basic land types, various nonbasic types, + ["arcane", "trap", "aura", "equipment"]
    @subtypes = card_data["subtypes"]

    #oracle rules text, will have to be parsed at some point(!)
    @text = card_data["text"]

    if @types.include?("Creature")
      @power = card_data["power"]
      @toughness = card_data["toughness"]
    end

    if @types.include?("Planeswalker")
      @loyalty = card_data["loyalty"]
    end
  end
end
