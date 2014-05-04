require 'test_helper'

class GoldmeasuresControllerTest < ActionController::TestCase
  setup do
    @goldmeasure = goldmeasures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goldmeasures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goldmeasure" do
    assert_difference('Goldmeasure.count') do
      post :create, goldmeasure: { time: @goldmeasure.time, total_shtd: @goldmeasure.total_shtd }
    end

    assert_redirected_to goldmeasure_path(assigns(:goldmeasure))
  end

  test "should show goldmeasure" do
    get :show, id: @goldmeasure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goldmeasure
    assert_response :success
  end

  test "should update goldmeasure" do
    patch :update, id: @goldmeasure, goldmeasure: { time: @goldmeasure.time, total_shtd: @goldmeasure.total_shtd }
    assert_redirected_to goldmeasure_path(assigns(:goldmeasure))
  end

  test "should destroy goldmeasure" do
    assert_difference('Goldmeasure.count', -1) do
      delete :destroy, id: @goldmeasure
    end

    assert_redirected_to goldmeasures_path
  end
end
