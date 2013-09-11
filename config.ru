require 'bundler'
Bundler.require

$: << File.dirname(__FILE__)

require 'people'

run Rack::URLMap.new People.route_map
