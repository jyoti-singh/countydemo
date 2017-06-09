class User < ActiveRecord::Base
  validates :name,:email,:phone_no, presence: true,uniqueness: true
  validates :phone_no, numericality: true,length: { is: 10 }
end
