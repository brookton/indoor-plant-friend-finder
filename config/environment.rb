require_relative '../app/plant.rb'
require_relative '../app/app_helper.rb'
require_relative '../app/plants_controller.rb'
require_relative '../app/plants_namer.rb'
require_relative '../app/quiz.rb'
require 'require_all'
require 'pry'
#require 'bundler'
require 'sinatra/activerecord'
require 'awesome_print'
require 'colored'
#require 'sinatra/activerecord/rake'

#Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './db/plants.db')


#binding.pry
#require_relative '../app/app.rb'
#ruby './app/app.rb'
#NewApp.intro
