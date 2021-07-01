require "test_helper"

class ProductHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_home_index_url
    assert_response :success
  end
end
