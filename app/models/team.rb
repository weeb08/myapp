require 'enumerator'

class Team < ActiveRecord::Base
	has_many :players
	validates_uniqueness_of :name
	require 'enumerator'
	end



