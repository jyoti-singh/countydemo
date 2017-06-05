class Book < ActiveRecord::Base
	require 'csv'

   #Download a csv file
    def self.to_csv
    	CSV.generate do |csv|
    		column_names = ["Id","Title","Author","Price","Published At","Created At"]
    		csv << column_names
    		all.each do |value|
    		  csv << [value.id,value.title,value.author,value.price,value.published_at,value.created_at]
    		end
    	end
    end

 # To Import value from CSV to database
    def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
            Book.find_or_create_by(title: row['Title'],author: row['Author'],price: row['Price'],published_at: row['Published At'],created_at: row['Created At'])
        end
    end
end

