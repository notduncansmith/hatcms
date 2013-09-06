# Gems
require 'sinatra'
require 'yaml'
require 'mongo'

# Internal Modules
require './models/post'
require './repos/postRepo'
require './controllers/adminController'
require './controllers/postController'


configure do
  disable :dump_errors # Shut WEBrick the fuck up
  config = YAML::load(File.read('config.yml')) # Bring in config file
  puts config
  set :config, config
  # Set up re-usable database connection to pass to repos
  set :connection, Mongo::MongoClient.new(config["db_host"], config["db_port"])
  .db(config["db_name"])
  set :postRepo, PostRepo.new(settings.connection)
end


get '/:page' do
  @title = params[:page]
  erb params[:page].to_sym 
  # It's possible to use :"#{params[:page]}" here 
  # but interpolated strings are dangerous
end

get '/' do 
  erb :index
end
