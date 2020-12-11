require "test_helper"

class JeusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jeus_index_url
    assert_response :success
  end
end
