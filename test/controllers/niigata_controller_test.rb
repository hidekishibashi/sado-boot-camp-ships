require "test_helper"

class NiigataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get niigata_index_url
    assert_response :success
  end
end
