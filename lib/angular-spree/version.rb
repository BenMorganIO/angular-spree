require 'json'

module AngularSpree
  VERSION = ::JSON.parse(File.read "#{File.expand_path File.dirname(__FILE__)}/../../bower.json")['version']
end
