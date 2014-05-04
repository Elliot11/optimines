require 'test_helper'

class GoldtrucksControllerTest < ActionController::TestCase
  setup do
    @goldtruck = goldtrucks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goldtrucks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goldtruck" do
    assert_difference('Goldtruck.count') do
      post :create, goldtruck: { t10: @goldtruck.t10, t11: @goldtruck.t11, t12: @goldtruck.t12, t13: @goldtruck.t13, t14: @goldtruck.t14, t15: @goldtruck.t15, t16: @goldtruck.t16, t17: @goldtruck.t17, t18: @goldtruck.t18, t19: @goldtruck.t19, t1: @goldtruck.t1, t20: @goldtruck.t20, t21: @goldtruck.t21, t22: @goldtruck.t22, t23: @goldtruck.t23, t24: @goldtruck.t24, t25: @goldtruck.t25, t2: @goldtruck.t2, t3: @goldtruck.t3, t4: @goldtruck.t4, t5: @goldtruck.t5, t6: @goldtruck.t6, t7: @goldtruck.t7, t8: @goldtruck.t8, t9: @goldtruck.t9, time: @goldtruck.time }
    end

    assert_redirected_to goldtruck_path(assigns(:goldtruck))
  end

  test "should show goldtruck" do
    get :show, id: @goldtruck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goldtruck
    assert_response :success
  end

  test "should update goldtruck" do
    patch :update, id: @goldtruck, goldtruck: { t10: @goldtruck.t10, t11: @goldtruck.t11, t12: @goldtruck.t12, t13: @goldtruck.t13, t14: @goldtruck.t14, t15: @goldtruck.t15, t16: @goldtruck.t16, t17: @goldtruck.t17, t18: @goldtruck.t18, t19: @goldtruck.t19, t1: @goldtruck.t1, t20: @goldtruck.t20, t21: @goldtruck.t21, t22: @goldtruck.t22, t23: @goldtruck.t23, t24: @goldtruck.t24, t25: @goldtruck.t25, t2: @goldtruck.t2, t3: @goldtruck.t3, t4: @goldtruck.t4, t5: @goldtruck.t5, t6: @goldtruck.t6, t7: @goldtruck.t7, t8: @goldtruck.t8, t9: @goldtruck.t9, time: @goldtruck.time }
    assert_redirected_to goldtruck_path(assigns(:goldtruck))
  end

  test "should destroy goldtruck" do
    assert_difference('Goldtruck.count', -1) do
      delete :destroy, id: @goldtruck
    end

    assert_redirected_to goldtrucks_path
  end
end
