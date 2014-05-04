require 'test_helper'

class TruckmetricsControllerTest < ActionController::TestCase
  setup do
    @truckmetric = truckmetrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:truckmetrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create truckmetric" do
    assert_difference('Truckmetric.count') do
      post :create, truckmetric: { date: @truckmetric.date, delays: @truckmetric.delays, directoperating: @truckmetric.directoperating, equipment: @truckmetric.equipment, indirectoperating: @truckmetric.indirectoperating, plannedmaintenance: @truckmetric.plannedmaintenance, standby: @truckmetric.standby, unplannedmaintenance: @truckmetric.unplannedmaintenance }
    end

    assert_redirected_to truckmetric_path(assigns(:truckmetric))
  end

  test "should show truckmetric" do
    get :show, id: @truckmetric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @truckmetric
    assert_response :success
  end

  test "should update truckmetric" do
    patch :update, id: @truckmetric, truckmetric: { date: @truckmetric.date, delays: @truckmetric.delays, directoperating: @truckmetric.directoperating, equipment: @truckmetric.equipment, indirectoperating: @truckmetric.indirectoperating, plannedmaintenance: @truckmetric.plannedmaintenance, standby: @truckmetric.standby, unplannedmaintenance: @truckmetric.unplannedmaintenance }
    assert_redirected_to truckmetric_path(assigns(:truckmetric))
  end

  test "should destroy truckmetric" do
    assert_difference('Truckmetric.count', -1) do
      delete :destroy, id: @truckmetric
    end

    assert_redirected_to truckmetrics_path
  end
end
