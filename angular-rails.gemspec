$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "angular-spree/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "angular-spree"
  s.version     = AngularSpree::VERSION
  s.authors     = ["Ben A. Morgan"]
  s.email       = ["ben@benmorgan.io"]
  s.homepage    = "https://github.com/BenMorganIO/angular-spree"
  s.summary     = "Angular Directives for the Spree API"
  s.license     = "MIT"

  s.files = Dir["{lib,vendor}/**/*", "MIT-LICENSE", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1"
  s.add_dependency "spree_api", "~> 2.3"

  s.add_development_dependency 'sinatra', '~> 1.4'
  s.add_development_dependency 'sinatra-assetpack', '~> 0.3'
  s.add_development_dependency 'guard', '~> 2.6'
  s.add_development_dependency 'guard-livereload'
  s.add_development_dependency 'guard-coffeescript'
end
