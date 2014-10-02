require 'json'

module AngularSpree
  VERSION = ::JSON.parse(File.expand_path '..', '..', 'bower.json')['version']
end
