require 'test_helper'

class GoldpercsControllerTest < ActionController::TestCase
  setup do
    @goldperc = goldpercs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goldpercs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goldperc" do
    assert_difference('Goldperc.count') do
      post :create, goldperc: { above_shtd: @goldperc.above_shtd, time: @goldperc.time, under_shtd: @goldperc.under_shtd }
    end

    assert_redirected_to goldperc_path(assigns(:goldperc))
  end

  test "should show goldperc" do
    get :show, id: @goldperc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goldperc
    assert_response :success
  end

  test "should update goldperc" do
    patch :update, id: @goldperc, goldperc: { above_shtd: @goldperc.above_shtd, time: @goldperc.time, under_shtd: @goldperc.under_shtd }
    assert_redirected_to goldperc_path(assigns(:goldperc))
  end

  test "should destroy goldperc" do
    assert_difference('Goldperc.count', -1) do
      delete :destroy, id: @goldperc
    end

    assert_redirected_to goldpercs_path
  end
end
