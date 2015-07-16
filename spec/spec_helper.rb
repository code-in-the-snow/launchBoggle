require "pry"
require "rspec"
require "capybara/rspec"

require_relative "../server"
require_relative "../lib/die"

set :environment, :test

Capybara.app = Sinatra::Application
