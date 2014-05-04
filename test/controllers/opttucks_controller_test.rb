require 'test_helper'

class OpttucksControllerTest < ActionController::TestCase
  setup do
    @opttuck = opttucks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opttucks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opttuck" do
    assert_difference('Opttuck.count') do
      post :create, opttuck: { percentage: @opttuck.percentage, time: @opttuck.time, truck: @opttuck.truck }
    end

    assert_redirected_to opttuck_path(assigns(:opttuck))
  end

  test "should show opttuck" do
    get :show, id: @opttuck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opttuck
    assert_response :success
  end

  test "should update opttuck" do
    patch :update, id: @opttuck, opttuck: { percentage: @opttuck.percentage, time: @opttuck.time, truck: @opttuck.truck }
    assert_redirected_to opttuck_path(assigns(:opttuck))
  end

  test "should destroy opttuck" do
    assert_difference('Opttuck.count', -1) do
      delete :destroy, id: @opttuck
    end

    assert_redirected_to opttucks_path
  end
end
