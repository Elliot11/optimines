require 'test_helper'

class ProcesstrucksControllerTest < ActionController::TestCase
  setup do
    @processtruck = processtrucks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processtrucks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create processtruck" do
    assert_difference('Processtruck.count') do
      post :create, processtruck: { time: @processtruck.time, truck1: @processtruck.truck1, truck2: @processtruck.truck2, truck3: @processtruck.truck3, truck4: @processtruck.truck4, truck5: @processtruck.truck5, truck6: @processtruck.truck6, truck7: @processtruck.truck7, truck8: @processtruck.truck8 }
    end

    assert_redirected_to processtruck_path(assigns(:processtruck))
  end

  test "should show processtruck" do
    get :show, id: @processtruck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @processtruck
    assert_response :success
  end

  test "should update processtruck" do
    patch :update, id: @processtruck, processtruck: { time: @processtruck.time, truck1: @processtruck.truck1, truck2: @processtruck.truck2, truck3: @processtruck.truck3, truck4: @processtruck.truck4, truck5: @processtruck.truck5, truck6: @processtruck.truck6, truck7: @processtruck.truck7, truck8: @processtruck.truck8 }
    assert_redirected_to processtruck_path(assigns(:processtruck))
  end

  test "should destroy processtruck" do
    assert_difference('Processtruck.count', -1) do
      delete :destroy, id: @processtruck
    end

    assert_redirected_to processtrucks_path
  end
end
