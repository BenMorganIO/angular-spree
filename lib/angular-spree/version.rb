require 'json'

module AngularSpree
  VERSION = ::JSON.parse(File.read("#{File.dirname(__FILE__)}/../../bower.json"))['version']
end
