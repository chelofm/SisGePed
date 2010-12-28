require 'test_helper'

class VigenciasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vigencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vigencia" do
    assert_difference('Vigencia.count') do
      post :create, :vigencia => { }
    end

    assert_redirected_to vigencia_path(assigns(:vigencia))
  end

  test "should show vigencia" do
    get :show, :id => vigencias(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vigencias(:one).to_param
    assert_response :success
  end

  test "should update vigencia" do
    put :update, :id => vigencias(:one).to_param, :vigencia => { }
    assert_redirected_to vigencia_path(assigns(:vigencia))
  end

  test "should destroy vigencia" do
    assert_difference('Vigencia.count', -1) do
      delete :destroy, :id => vigencias(:one).to_param
    end

    assert_redirected_to vigencias_path
  end
end
