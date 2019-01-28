#! /usr/bin/env ruby
##****************************************************************************
# RUBY - The Gossip Project (Sinatra)
#****************************************************************************
#   Ruby's Program - config
#   Written by: Guillaume CHRISTE
# 	Date: 28-Jan-2019
#   
#   Description:
# 		- 
# 		- 
# 		
# 	Gems:
		require 'bundler'
		Bundler.require
#		
#	Links:
		$:.unshift File.expand_path("./../lib", __FILE__)
		require 'controller'
		require 'gossip'
#
#****************************************************************************
run ApplicationController
# End of config ..............................................................
#.............................................................................
#.............................................................................