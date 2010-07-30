class CreatePromotions < ActiveRecord::Migration
  def self.up
    create_content_table :promotions do |t|      
      t.text :description, :size => (64.kilobytes + 1) 
      t.integer :property_id
    end
    
    
    ContentType.create!(:name => "Promotion", :group_name => "Property")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Promotion'])
    CategoryType.all(:conditions => ['name = ?', 'Promotion']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :promotion_versions
    drop_table :promotions
  end
end
