class CreatePropertyLogos < ActiveRecord::Migration
  def self.up
    create_content_table :property_logos do |t|
      t.belongs_to :attachment
      t.integer :attachment_version
      t.belongs_to :property
    end
    
    unless Section.with_path('/property_logos').exists?
      Section.create!(:name => "Property Logo", :parent => Section.system.first, :path => '/property_logos', :allow_groups=>:all)
    end
    ContentType.create!(:name => "PropertyLogo", :group_name => "Property")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'PropertyLogo'])
    CategoryType.all(:conditions => ['name = ?', 'Property Logo']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :property_logo_versions
    drop_table :property_logos
  end
end
