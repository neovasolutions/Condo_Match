class CreateAreaProfiles < ActiveRecord::Migration
  def self.up
    create_content_table :area_profiles do |t|
      t.string :name 
      t.string :address1 
      t.string :address2 
      t.string :city 
      t.string :state 
      t.string :country 
      t.string :zipcode
      t.integer :property_id
    end
    
    
    ContentType.create!(:name => "AreaProfile", :group_name => "Property")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'AreaProfile'])
    CategoryType.all(:conditions => ['name = ?', 'Area Profile']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :area_profile_versions
    drop_table :area_profiles
  end
end
