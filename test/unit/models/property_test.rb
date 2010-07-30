require File.join(File.dirname(__FILE__), '/../../test_helper')

class PropertyTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Property.create!
  end
  
end