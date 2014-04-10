class Component < ActiveRecord::Base
  belongs_to :part
  belongs_to :car
end
