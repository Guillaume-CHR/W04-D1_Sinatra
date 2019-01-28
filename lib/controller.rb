#! /usr/bin/env ruby
##****************************************************************************
# RUBY - The Gossip Project (Sinatra)
#****************************************************************************
#   Ruby's Program - Controller
#   Written by: Guillaume CHRISTE
# 	Date: 28-Jan-2019
#   
#   Description:
# 		- 
# 		- 
#
#****************************************************************************
class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do 
  	erb :new_gossip
  end

  post '/gossips/new/' do
  	Gossip.new(params.fetch("gossip_author"),params.fetch("gossip_content")).save
  	redirect '/'
	end

	get '/gossips/:id/' do
		erb :gossipx, locals: {gossip: Gossip.find(params['id'].to_i) , ind: params['id'].to_i}
	end

	get '/gossips/:id/show/' do
		erb :show, locals: {gossip: Gossip.find(params['id'].to_i) , ind: params['id'].to_i}
	end

	post '/gossips/:id/show/'	do
		Gossip.edit(params.fetch("gossip_author"),params.fetch("gossip_content"),params['id'].to_i)
  	redirect '/'
	end
end
# End of Controller ..........................................................
#.............................................................................
#.............................................................................