require 'test_helper'

class EmisionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emision" do
    assert_difference('Emision.count') do
      post :create, :emision => { }
    end

    assert_redirected_to emision_path(assigns(:emision))
  end

  test "should show emision" do
    get :show, :id => emisions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => emisions(:one).to_param
    assert_response :success
  end

  test "should update emision" do
    put :update, :id => emisions(:one).to_param, :emision => { }
    assert_redirected_to emision_path(assigns(:emision))
  end

  test "should destroy emision" do
    assert_difference('Emision.count', -1) do
      delete :destroy, :id => emisions(:one).to_param
    end

    assert_redirected_to emisions_path
  end
end
