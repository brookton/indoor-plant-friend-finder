require_relative '../lib/plants.rb'
require_relative '../db/plants.db'
require 'require_all'
require 'pry'
require 'bundler'
require 'sinatra/activerecord'

Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: '../db/plants.db')
