require 'test_helper'

class GoldpisControllerTest < ActionController::TestCase
  setup do
    @goldpi = goldpis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goldpis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goldpi" do
    assert_difference('Goldpi.count') do
      post :create, goldpi: { label: @goldpi.label, time: @goldpi.time, value: @goldpi.value }
    end

    assert_redirected_to goldpi_path(assigns(:goldpi))
  end

  test "should show goldpi" do
    get :show, id: @goldpi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goldpi
    assert_response :success
  end

  test "should update goldpi" do
    patch :update, id: @goldpi, goldpi: { label: @goldpi.label, time: @goldpi.time, value: @goldpi.value }
    assert_redirected_to goldpi_path(assigns(:goldpi))
  end

  test "should destroy goldpi" do
    assert_difference('Goldpi.count', -1) do
      delete :destroy, id: @goldpi
    end

    assert_redirected_to goldpis_path
  end
end
