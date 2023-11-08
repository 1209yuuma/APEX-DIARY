require "test_helper"

class LegendsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get legends_new_url
    assert_response :success
  end
end
