class CreatePropertyDisplayImages < ActiveRecord::Migration
  def self.up
    create_content_table :property_display_images do |t|
      t.belongs_to :attachment
      t.integer :attachment_version 
      t.belongs_to :property
    end
    
    unless Section.with_path('/property_display_images').exists?
      Section.create!(:name => "Property Display Image", :parent => Section.system.first, :path => '/property_display_images', :allow_groups=>:all)
    end
    ContentType.create!(:name => "PropertyDisplayImage", :group_name => "Property")
  end
  
  def self.down
    ContentType.delete_all(['name = ?', 'PropertyDisplayImage'])
    CategoryType.all(:conditions => ['name = ?', 'Property Display Image']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :property_display_image_versions
    drop_table :property_display_images
  end
end
