require_relative '../lib/plant.rb'
require 'require_all'
require 'pry'
#require 'bundler'
require 'sinatra/activerecord'

#Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: './db/plants.db')

#binding.pry
