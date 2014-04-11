class Part < ActiveRecord::Base
  belongs_to :car
  has_many :components
end
