class CreateSections < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    create_section(:buyers, :name => "BUYERS",  :parent => Section.root.first, :path => "/buyers")
    create_section(:investors, :name => "INVESTORS",  :parent => Section.root.first, :path => "/investors")
    create_section(:sellers, :name => "SELLERS",  :parent => Section.root.first, :path => "/sellers")
    create_section(:store, :name => "STORE",  :parent => Section.root.first, :path => "/store")
    create_section(:about, :name => "ABOUT",  :parent => Section.root.first, :path => "/about")
    Group.all.each{|g| g.sections = Section.all } 
    create_page(:buyers, :name => "Buyers", :path => "/buyers", :section => sections(:buyers), :template_file_name => "default.html.erb", :cacheable => true, :hidden=>true)
    create_page(:investors, :name => "Investors", :path => "/investors", :section => sections(:investors), :template_file_name => "investors.html.erb", :cacheable => true, :hidden=>true)
    create_page(:sellers, :name => "Sellers", :path => "/sellers", :section => sections(:sellers), :template_file_name => "sellers.html.erb", :cacheable => true, :hidden=>true)
    create_page(:store, :name => "Store", :path => "/store", :section => sections(:store), :template_file_name => "store.html.erb", :cacheable => true, :hidden=>true)
    create_page(:about, :name => "About", :path => "/about", :section => sections(:about), :template_file_name => "about.html.erb", :cacheable => true, :hidden=>true)
    pages(:buyers).publish!
    pages(:investors).publish!
    pages(:sellers).publish!
    pages(:store).publish!
    pages(:about).publish!
  end
  
  def self.down
  end
end
