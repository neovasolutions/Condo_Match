require File.join(File.dirname(__FILE__), '/../../test_helper')

class NewsEventTest < ActiveSupport::TestCase

  test "should be able to create new block" do
    assert NewsEvent.create!
  end
  
end