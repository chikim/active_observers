require 'active_observers/observer'

module ActiveObservers
  def self.included base
    base.extend ClassMethods
  end

  module ClassMethods
    def observed_by *args
      options = args.last.is_a?(Hash) ? args.pop : {}
      args.each{|ob| ActiveObservers::Observer.append_callback(ob, options)}
    end

    def observing
      ## TODO
    end
  end
end
