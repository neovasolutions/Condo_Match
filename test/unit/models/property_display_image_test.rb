require File.join(File.dirname(__FILE__), '/../../test_helper')

class PropertyDisplayImageTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert PropertyDisplayImage.create!
  end
  
end