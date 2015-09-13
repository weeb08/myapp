class Player < ActiveRecord::Base
	belongs_to :team
	validates_uniqueness_of :name
end




def self.to_csv(options = {})
CSV.generate(options) do |csv|
	csv << column_names
	all.each do |player|
		csv << player.attributes.values_at(*column_names)
	end
	end
	end
	

	def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadhseet.row(1)
		(2..spreadsheet.last_row).each do |i|
		row = Hash[[header, spreadsheet.row(i)].transpose]
		player = find_byid(row["id"]) || new
		player.attributes = row.to_hash.slice(*accessible_attributes)
		player.save!
	end
	end

	def self.open_spreadsheet(file)
	case File.extname(file.original_filename)
	when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
	else raise "Unknown file type: #{file.original_filename}"
	end
	end
