class NewsEvent < ActiveRecord::Base
  acts_as_content_block
  belongs_to :property
  validates_presence_of :news_name
  validates_presence_of :event_title
  validates_presence_of :property_id
  validates_presence_of :event_starts_on
  validates_presence_of :event_ends_on
 #Validate the date validation
  validate :check_end_date_validation
 
 #This function checks whether the event end date is greater than start date or not.
  def check_end_date_validation
    unless self.event_ends_on.blank?
      if self.event_ends_on < self.event_starts_on
       #Add errror
       self.errors.add(:event_ends_on, "date should be greater than event start on date")
      end
    end
  end

end
