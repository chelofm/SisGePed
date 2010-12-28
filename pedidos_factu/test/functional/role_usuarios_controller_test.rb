require 'test_helper'

class RoleUsuariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:role_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create role_usuario" do
    assert_difference('RoleUsuario.count') do
      post :create, :role_usuario => { }
    end

    assert_redirected_to role_usuario_path(assigns(:role_usuario))
  end

  test "should show role_usuario" do
    get :show, :id => role_usuarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => role_usuarios(:one).to_param
    assert_response :success
  end

  test "should update role_usuario" do
    put :update, :id => role_usuarios(:one).to_param, :role_usuario => { }
    assert_redirected_to role_usuario_path(assigns(:role_usuario))
  end

  test "should destroy role_usuario" do
    assert_difference('RoleUsuario.count', -1) do
      delete :destroy, :id => role_usuarios(:one).to_param
    end

    assert_redirected_to role_usuarios_path
  end
end
