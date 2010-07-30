class Subscription < ActiveRecord::Base
  acts_as_content_block
  belongs_to :property
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :phone_number

end
