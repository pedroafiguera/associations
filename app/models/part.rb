class Part < ActiveRecord::Base
  belongs_to :cars
  belongs_to :components
end
