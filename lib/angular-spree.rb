require 'angular-spree/version'

module AngularSpree
  module Rails
    if defined? ::Rails::Engine
      require "angular-spree/engine"
    elsif defined? Sprockets
      require "angular-spree/sprockets"
    end
  end
end
