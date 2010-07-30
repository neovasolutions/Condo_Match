class CreateProperties < ActiveRecord::Migration
  def self.up
    create_content_table :properties do |t|
      t.string :name 
      t.text :description 
      t.belongs_to :attachment
      t.integer :attachment_version 
    end
    
    unless Section.with_path('/properties').exists?
      Section.create!(:name => "Property", :parent => Section.system.first, :path => '/properties', :allow_groups=>:all)
    end
    ContentType.create!(:name => "Property", :group_name => "Property")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Property'])
    CategoryType.all(:conditions => ['name = ?', 'Property']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :property_versions
    drop_table :properties
  end
end
