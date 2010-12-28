require 'test_helper'

class TipocuentasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipocuentas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipocuenta" do
    assert_difference('Tipocuenta.count') do
      post :create, :tipocuenta => { }
    end

    assert_redirected_to tipocuenta_path(assigns(:tipocuenta))
  end

  test "should show tipocuenta" do
    get :show, :id => tipocuentas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipocuentas(:one).to_param
    assert_response :success
  end

  test "should update tipocuenta" do
    put :update, :id => tipocuentas(:one).to_param, :tipocuenta => { }
    assert_redirected_to tipocuenta_path(assigns(:tipocuenta))
  end

  test "should destroy tipocuenta" do
    assert_difference('Tipocuenta.count', -1) do
      delete :destroy, :id => tipocuentas(:one).to_param
    end

    assert_redirected_to tipocuentas_path
  end
end
