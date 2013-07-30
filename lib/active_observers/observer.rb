require 'active_support/core_ext/string/inflections'
require 'active_support/core_ext/object/try'
require 'active_support/callbacks'

require 'active_observers/option'

module ActiveObservers
  class Observer
    class << self
      def append_callback(observer, options = {})
        opt = Option.new options
        if observer_klass = Observer.constantize(observer)
          observer_klass.set_callback(opt.trigger_name, opt.trigger_filter, opt.callback)
        end
      end

      def constantize observer
        observer.try(:to_s).try(:camelize).try(:constantize)
      end
    end
  end
end
