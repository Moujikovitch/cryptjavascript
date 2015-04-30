require 'sinatra'
require 'shotgun'
require 'sinatra/activerecord'

set :database,  "sqlite3:cryptlines_db.sqlite3"

class Cryptline < ActiveRecord::Base
end

get '/' do
	@datas=Cryptline.all
  	erb :index
end

get '/add' do
	erb :add
end

post '/add' do
	Cryptline.create(params)
	redirect '/'
end
