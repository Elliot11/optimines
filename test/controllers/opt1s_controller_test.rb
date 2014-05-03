require 'test_helper'

class Opt1sControllerTest < ActionController::TestCase
  setup do
    @opt1 = opt1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opt1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opt1" do
    assert_difference('Opt1.count') do
      post :create, opt1: { color: @opt1.color, hidden: @opt1.hidden, percentage: @opt1.percentage, time: @opt1.time, truck: @opt1.truck }
    end

    assert_redirected_to opt1_path(assigns(:opt1))
  end

  test "should show opt1" do
    get :show, id: @opt1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opt1
    assert_response :success
  end

  test "should update opt1" do
    patch :update, id: @opt1, opt1: { color: @opt1.color, hidden: @opt1.hidden, percentage: @opt1.percentage, time: @opt1.time, truck: @opt1.truck }
    assert_redirected_to opt1_path(assigns(:opt1))
  end

  test "should destroy opt1" do
    assert_difference('Opt1.count', -1) do
      delete :destroy, id: @opt1
    end

    assert_redirected_to opt1s_path
  end
end
