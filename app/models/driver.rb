class Driver < ActiveRecord::Base
  has_many :routes
  has_many :cars, through: :routes
end
