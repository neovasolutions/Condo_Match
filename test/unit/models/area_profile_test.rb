require File.join(File.dirname(__FILE__), '/../../test_helper')

class AreaProfileTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert AreaProfile.create!
  end
  
end