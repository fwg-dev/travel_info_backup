#required gems 
require "httparty"
require "pry"
require "colorize"


require 'bundler/setup' #make sure all gems in the Gemfile are present on this machine 
Bundler.require #require at runtime

#require_relative your code
require_relative "../lib/api.rb"
require_relative "../lib/cli.rb"
# require_relative "../lib/travel.rb"
require_relative "../lib/country.rb"
