class Countytype < ActiveRecord::Base
	self.inheritance_column = nil
	has_many :categories
	def to_s
     self.type
    end
end
