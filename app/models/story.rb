class Story < ActiveRecord::Base
	belongs_to :page
	validates_uniqueness_of :name
end
