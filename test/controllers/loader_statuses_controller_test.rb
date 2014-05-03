require 'test_helper'

class LoaderStatusesControllerTest < ActionController::TestCase
  setup do
    @loader_status = loader_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loader_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loader_status" do
    assert_difference('LoaderStatus.count') do
      post :create, loader_status: { button-10: @loader_status.button-10, button-11: @loader_status.button-11, button-12: @loader_status.button-12, button-13: @loader_status.button-13, button-14: @loader_status.button-14, button-15: @loader_status.button-15, button-1: @loader_status.button-1, button-2: @loader_status.button-2, button-3: @loader_status.button-3, button-4: @loader_status.button-4, button-5: @loader_status.button-5, button-6: @loader_status.button-6, button-7: @loader_status.button-7, button-8: @loader_status.button-8, button-9: @loader_status.button-9, time: @loader_status.time }
    end

    assert_redirected_to loader_status_path(assigns(:loader_status))
  end

  test "should show loader_status" do
    get :show, id: @loader_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loader_status
    assert_response :success
  end

  test "should update loader_status" do
    patch :update, id: @loader_status, loader_status: { button-10: @loader_status.button-10, button-11: @loader_status.button-11, button-12: @loader_status.button-12, button-13: @loader_status.button-13, button-14: @loader_status.button-14, button-15: @loader_status.button-15, button-1: @loader_status.button-1, button-2: @loader_status.button-2, button-3: @loader_status.button-3, button-4: @loader_status.button-4, button-5: @loader_status.button-5, button-6: @loader_status.button-6, button-7: @loader_status.button-7, button-8: @loader_status.button-8, button-9: @loader_status.button-9, time: @loader_status.time }
    assert_redirected_to loader_status_path(assigns(:loader_status))
  end

  test "should destroy loader_status" do
    assert_difference('LoaderStatus.count', -1) do
      delete :destroy, id: @loader_status
    end

    assert_redirected_to loader_statuses_path
  end
end
