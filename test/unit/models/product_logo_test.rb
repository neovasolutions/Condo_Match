require File.join(File.dirname(__FILE__), '/../../test_helper')

class ProductLogoTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert ProductLogo.create!
  end
  
end