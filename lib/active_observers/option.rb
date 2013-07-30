module ActiveObservers
  class Option
    attr_accessor :trigger_name, :trigger_filter, :callback
    def initialize args = {}
      @trigger_filter = args[:trigger].to_s.split("_")[0]
      @trigger_name = args[:trigger].to_s.split("_")[1]
      @callback = args[:callback]
    end
  end
end
