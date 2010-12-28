require 'test_helper'

class GestionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gestion" do
    assert_difference('Gestion.count') do
      post :create, :gestion => { }
    end

    assert_redirected_to gestion_path(assigns(:gestion))
  end

  test "should show gestion" do
    get :show, :id => gestions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gestions(:one).to_param
    assert_response :success
  end

  test "should update gestion" do
    put :update, :id => gestions(:one).to_param, :gestion => { }
    assert_redirected_to gestion_path(assigns(:gestion))
  end

  test "should destroy gestion" do
    assert_difference('Gestion.count', -1) do
      delete :destroy, :id => gestions(:one).to_param
    end

    assert_redirected_to gestions_path
  end
end
