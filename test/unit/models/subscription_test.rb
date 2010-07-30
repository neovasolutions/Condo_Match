require File.join(File.dirname(__FILE__), '/../../test_helper')

class SubscriptionTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert Subscription.create!
  end
  
end