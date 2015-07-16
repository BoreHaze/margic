class MtgObject
  def initialize(options)
    @owner = options["owner"]
    @controller = options["controller"] || @owner
    @zone = options["zone"]
    @counters = Hash.new() { |h, k| h[k] = 0 }
    @colors = options["colors"] || :colorless
  end
end
