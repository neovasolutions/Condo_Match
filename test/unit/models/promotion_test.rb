require File.join(File.dirname(__FILE__), '/../../test_helper')

class PromotionTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Promotion.create!
  end
  
end