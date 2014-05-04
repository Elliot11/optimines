require 'test_helper'

class OpttrucksControllerTest < ActionController::TestCase
  setup do
    @opttruck = opttrucks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opttrucks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opttruck" do
    assert_difference('Opttruck.count') do
      post :create, opttruck: { percentage: @opttruck.percentage, time: @opttruck.time, truck: @opttruck.truck }
    end

    assert_redirected_to opttruck_path(assigns(:opttruck))
  end

  test "should show opttruck" do
    get :show, id: @opttruck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opttruck
    assert_response :success
  end

  test "should update opttruck" do
    patch :update, id: @opttruck, opttruck: { percentage: @opttruck.percentage, time: @opttruck.time, truck: @opttruck.truck }
    assert_redirected_to opttruck_path(assigns(:opttruck))
  end

  test "should destroy opttruck" do
    assert_difference('Opttruck.count', -1) do
      delete :destroy, id: @opttruck
    end

    assert_redirected_to opttrucks_path
  end
end
