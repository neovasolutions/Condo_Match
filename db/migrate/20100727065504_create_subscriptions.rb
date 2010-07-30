class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_content_table :subscriptions do |t|
      t.string :name 
      t.string :phone_number 
      t.string :email 
      t.integer :property_id
    end
    
    
    ContentType.create!(:name => "Subscription", :group_name => "Property")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Subscription'])
    CategoryType.all(:conditions => ['name = ?', 'Subscription']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :subscription_versions
    drop_table :subscriptions
  end
end
