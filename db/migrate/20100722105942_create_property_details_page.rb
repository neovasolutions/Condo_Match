class CreatePropertyDetailsPage < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    create_section(:property, :name => "PROPERTY",  :parent => Section.root.first, :path => "/property", :hidden=>true, :allow_groups=>:all)
    create_page(:property_details, :name => "Property Details", :path => "/property-details", :section => sections(:property), :template_file_name => "property_details.html.erb", :cacheable => true, :hidden=>true)
    pages(:property_details).publish!
    #Create property details portlet
    PropertyDetailsPortlet.create!(:name => "Property Details Portlet", 
    :template => PropertyDetailsPortlet.default_template,
    :connect_to_page_id => pages(:property_details).id,
    :connect_to_container => "main")
  end

  def self.down
    Section.find(:first, :conditions=>["name=?", "PROPERTY"]).destroy
    Page.find(:first, :conditions=>["name=?", "Property Details"]).destroy
  end
end
