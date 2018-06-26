require 'test_helper'

class TwetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twets_index_url
    assert_response :success
  end

end
