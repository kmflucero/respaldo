require 'test_helper'

class PorductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get porducts_index_url
    assert_response :success
  end

end
