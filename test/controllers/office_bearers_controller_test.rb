require 'test_helper'

class OfficeBearersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get office_bearers_index_url
    assert_response :success
  end

end
