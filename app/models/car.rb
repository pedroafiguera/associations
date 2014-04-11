class Car < ActiveRecord::Base
  has_many :parts
  has_many :routes
  has_many :drivers, through: :routes
end
