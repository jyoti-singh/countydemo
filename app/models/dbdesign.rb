
class AdminUser < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end

class GovOffice < ActiveRecord::Base
  has_many :categories, as: categorable
end

class PublicRecord < ActiveRecord::Base
  has_many :categories, as: categorable
end


class Category < ActiveRecord::Base
  belong_to :categorable, :polymorphic => true
end

class State < ActiveRecord::Base
  has_many :counties
end

class County < ActiveRecord::Base
  belong_to :state
  has_many  :cities
end

class City < ActiveRecord::Base
  belong_to :county
end

