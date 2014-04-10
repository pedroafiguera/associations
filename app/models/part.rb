class Part < ActiveRecord::Base
  belongs_to :cars
  has_many :components
end
