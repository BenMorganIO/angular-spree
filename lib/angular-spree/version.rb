require 'json'

module AngularSpree
  VERSION = ::JSON.parse(File.read 'bower.json')['version']
end
