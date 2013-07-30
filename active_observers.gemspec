Gem::Specification.new do |s|
  s.name        = "active_observers"
  s.version     = "0.0.1"
  s.date        = "2013-07-30"
  s.summary     = "Active Observers"
  s.description = "Observe ActiveRecord models to process call everything you want"
  s.authors     = ["ChiKim"]
  s.email       = "huy.nguyendang@hotmail.com"
  s.homepage    = "http://github.com/chikim/active_observers"

  s.files       = [
    "lib/active_observers.rb",
    "lib/active_observers/option.rb",
    "lib/active_observers/observer.rb"
  ]

  s.add_runtime_dependency "activesupport"
end
