class CreateNewsEvents < ActiveRecord::Migration
  def self.up
    create_content_table :news_events do |t|
      t.string :news_name 
      t.text :news_description 
      t.string :event_title 
      t.text :event_description
      t.date :event_starts_on 
      t.date :event_ends_on 
      t.belongs_to :property
    end
    
    
    ContentType.create!(:name => "NewsEvent", :group_name => "Property")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'NewsEvent'])
    CategoryType.all(:conditions => ['name = ?', 'News Event']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :news_event_versions
    drop_table :news_events
  end
end
