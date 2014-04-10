class Component < ActiveRecord::Base
  has_many :parts
  has_many :cars, through: :parts
end
