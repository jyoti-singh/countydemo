class State < ActiveRecord::Base
  has_many :counties
  validates :name, presence: true,uniqueness: true
end
