
class AdminUser < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end

class CountyOfficeType < ActiveRecord::Base
  has_many :categories
end

class Category < ActiveRecord::Base
  belongs_to :countyofficetype
  has_one :content_box
end

class State < ActiveRecord::Base
  has_many :counties
end

class County < ActiveRecord::Base
  belongs_to :state
  has_many  :cities
end

class City < ActiveRecord::Base
  belongs_to :county
end

class CoFacilityDetail < ActiveRecord::Base
  belongs_to :category
  belongs_to :state
  belongs_to :county
  belongs_to :city
end

class PublicRecordDetail < ActiveRecord::Base
  belongs_to :category
  belongs_to :state
  belongs_to :county
  belongs_to :city
end

class ContentBox < ActiveRecord::Base
  belongs_to :category
end