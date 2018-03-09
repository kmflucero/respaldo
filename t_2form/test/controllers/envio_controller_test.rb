require 'test_helper'

class EnvioControllerTest < ActionDispatch::IntegrationTest
  test "should get recibo" do
    get envio_recibo_url
    assert_response :success
  end

end
