# -*- encoding : utf-8 -*-
ENV['RACK_ENV'] ||= 'development'

$: << 'lib'

require 'active_support/inflector'
require 'config/environment'
require 'sinatra/respond_with'

require 'yajl/json_gem'
require 'multi_json'
MultiJson.engine = :yajl

module People
  Dir[File.join(File.dirname(__FILE__), 'lib', '*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end
  module Controllers
    Dir[File.join(File.dirname(__FILE__), 'lib', 'controllers/*.rb')].each do |f|
      autoload File.basename(f, '.rb').camelize.to_sym, f
    end
  end

  def self.route_map
    {
      '/'       => People::App,
#      '/person' => People::Controllers::People,
#      '/group'  => People::Controllers::Group,
#      '/search' => People::Controllers::Search,
    }
  end
end
