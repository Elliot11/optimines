require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get overview" do
    get :overview
    assert_response :success
  end

  test "should get loaderoptimisation" do
    get :loaderoptimisation
    assert_response :success
  end

  test "should get goldtracking" do
    get :goldtracking
    assert_response :success
  end

  test "should get assetmetrics" do
    get :assetmetrics
    assert_response :success
  end

end
