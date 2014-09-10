require 'sinatra'
require 'sinatra/assetpack'
require 'haml'

get '/' do
  haml :index
end

register Sinatra::AssetPack

assets do
  serve '/bower_components', from: '../bower_components'
  serve '/src', from: '../src'
  serve '/assets', from: './assets'

  js :application, [
    '/bower_components/angular/angular.js',
    '/bower_components/angular-bootstrap/ui-bootstrap-tpls.js',
    '/src/*.js',
    '/assets/*.js'
  ]

  css :application, [
    '/bower_components/bootstrap/dist/css/bootstrap.min.css',
    '/assets/style.css'
  ]
end
