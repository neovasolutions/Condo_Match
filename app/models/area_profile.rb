class AreaProfile < ActiveRecord::Base
  acts_as_content_block
  belongs_to :property
  validates_presence_of :name
  validates_presence_of :address1
  validates_presence_of :country
  validates_presence_of :property_id

end
