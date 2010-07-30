class Promotion < ActiveRecord::Base
  acts_as_content_block
  belongs_to :property
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :property_id

end
