require File.join(File.dirname(__FILE__), '/../../test_helper')

class PropertyLogoTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert PropertyLogo.create!
  end
  
end