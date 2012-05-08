class Listing < ActiveRecord::Base
  scope :apartments,  where(:ltype => false)
  scope :houses,      where(:ltype => true)
end
