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
end
# End of Controller ..........................................................
#.............................................................................
#.............................................................................