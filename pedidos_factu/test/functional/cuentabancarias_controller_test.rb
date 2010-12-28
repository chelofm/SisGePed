require 'test_helper'

class CuentabancariasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuentabancarias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuentabancaria" do
    assert_difference('Cuentabancaria.count') do
      post :create, :cuentabancaria => { }
    end

    assert_redirected_to cuentabancaria_path(assigns(:cuentabancaria))
  end

  test "should show cuentabancaria" do
    get :show, :id => cuentabancarias(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cuentabancarias(:one).to_param
    assert_response :success
  end

  test "should update cuentabancaria" do
    put :update, :id => cuentabancarias(:one).to_param, :cuentabancaria => { }
    assert_redirected_to cuentabancaria_path(assigns(:cuentabancaria))
  end

  test "should destroy cuentabancaria" do
    assert_difference('Cuentabancaria.count', -1) do
      delete :destroy, :id => cuentabancarias(:one).to_param
    end

    assert_redirected_to cuentabancarias_path
  end
end
