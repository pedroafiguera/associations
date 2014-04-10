class Car < ActiveRecord::Base
  has_many :parts
  has_many :components, through: :parts
end
