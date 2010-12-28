require 'test_helper'

class EstadoAutorizacionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_autorizacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_autorizacion" do
    assert_difference('EstadoAutorizacion.count') do
      post :create, :estado_autorizacion => { }
    end

    assert_redirected_to estado_autorizacion_path(assigns(:estado_autorizacion))
  end

  test "should show estado_autorizacion" do
    get :show, :id => estado_autorizacions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => estado_autorizacions(:one).to_param
    assert_response :success
  end

  test "should update estado_autorizacion" do
    put :update, :id => estado_autorizacions(:one).to_param, :estado_autorizacion => { }
    assert_redirected_to estado_autorizacion_path(assigns(:estado_autorizacion))
  end

  test "should destroy estado_autorizacion" do
    assert_difference('EstadoAutorizacion.count', -1) do
      delete :destroy, :id => estado_autorizacions(:one).to_param
    end

    assert_redirected_to estado_autorizacions_path
  end
end
