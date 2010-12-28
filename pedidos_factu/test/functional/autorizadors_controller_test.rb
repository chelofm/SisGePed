require 'test_helper'

class AutorizadorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autorizadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autorizador" do
    assert_difference('Autorizador.count') do
      post :create, :autorizador => { }
    end

    assert_redirected_to autorizador_path(assigns(:autorizador))
  end

  test "should show autorizador" do
    get :show, :id => autorizadors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => autorizadors(:one).to_param
    assert_response :success
  end

  test "should update autorizador" do
    put :update, :id => autorizadors(:one).to_param, :autorizador => { }
    assert_redirected_to autorizador_path(assigns(:autorizador))
  end

  test "should destroy autorizador" do
    assert_difference('Autorizador.count', -1) do
      delete :destroy, :id => autorizadors(:one).to_param
    end

    assert_redirected_to autorizadors_path
  end
end
