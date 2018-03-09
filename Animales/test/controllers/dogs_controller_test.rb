require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  test "should get ingreso" do
    get dogs_ingreso_url
    assert_response :success
  end

  test "should get respuesta" do
    get dogs_respuesta_url
    assert_response :success
  end

end
