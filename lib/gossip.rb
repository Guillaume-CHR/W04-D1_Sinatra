#! /usr/bin/env ruby
##****************************************************************************
# RUBY - The Gossip Project (Sinatra)
#****************************************************************************
#   Ruby's Program - Gossip
#   Written by: Guillaume CHRISTE
# 	Date: 28-Jan-2019
#   
#   Description:
# 		- 
# 		- 
#
#****************************************************************************
class Gossip 
	attr_accessor :author, :content

	def initialize(author,content)
		@author = author
		@content = content
	end 

	def save
	  CSV.open("./db/gossip.csv", "ab") do |csv|
	    csv << ["#{@author}", "#{@content}"]
	  end
	end

	def self.all
	  all_gossips = []
	  CSV.read("./db/gossip.csv").each do |csv_line|
	    all_gossips << Gossip.new(csv_line[0], csv_line[1])
	  end
	  return all_gossips
	end

	def self.find(id)
		var_gossip = nil
		(Gossip.all).each_with_index do |gossip,i|
			puts "Gossip #{i}: #{gossip}"
			if id == i
				var_gossip = gossip
			end
		end
		return var_gossip
	end
end
# End of Gossip ..............................................................
#.............................................................................
#.............................................................................