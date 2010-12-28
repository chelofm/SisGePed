require 'test_helper'

class EstadosUsuariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estados_usuario" do
    assert_difference('EstadosUsuario.count') do
      post :create, :estados_usuario => { }
    end

    assert_redirected_to estados_usuario_path(assigns(:estados_usuario))
  end

  test "should show estados_usuario" do
    get :show, :id => estados_usuarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => estados_usuarios(:one).to_param
    assert_response :success
  end

  test "should update estados_usuario" do
    put :update, :id => estados_usuarios(:one).to_param, :estados_usuario => { }
    assert_redirected_to estados_usuario_path(assigns(:estados_usuario))
  end

  test "should destroy estados_usuario" do
    assert_difference('EstadosUsuario.count', -1) do
      delete :destroy, :id => estados_usuarios(:one).to_param
    end

    assert_redirected_to estados_usuarios_path
  end
end
