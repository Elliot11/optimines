require 'test_helper'

class OptloadersControllerTest < ActionController::TestCase
  setup do
    @optloader = optloaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optloaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optloader" do
    assert_difference('Optloader.count') do
      post :create, optloader: { color: @optloader.color, time: @optloader.time, truck: @optloader.truck }
    end

    assert_redirected_to optloader_path(assigns(:optloader))
  end

  test "should show optloader" do
    get :show, id: @optloader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optloader
    assert_response :success
  end

  test "should update optloader" do
    patch :update, id: @optloader, optloader: { color: @optloader.color, time: @optloader.time, truck: @optloader.truck }
    assert_redirected_to optloader_path(assigns(:optloader))
  end

  test "should destroy optloader" do
    assert_difference('Optloader.count', -1) do
      delete :destroy, id: @optloader
    end

    assert_redirected_to optloaders_path
  end
end
