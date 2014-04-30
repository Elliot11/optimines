require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get overview" do
    get :overview
    assert_response :success
  end

  test "should get pit_controller" do
    get :pit_controller
    assert_response :success
  end

  test "should get optimisation" do
    get :optimisation
    assert_response :success
  end

  test "should get driver" do
    get :driver
    assert_response :success
  end

end
