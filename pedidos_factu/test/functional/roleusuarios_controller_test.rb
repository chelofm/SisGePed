require 'test_helper'

class RoleusuariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roleusuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roleusuario" do
    assert_difference('Roleusuario.count') do
      post :create, :roleusuario => { }
    end

    assert_redirected_to roleusuario_path(assigns(:roleusuario))
  end

  test "should show roleusuario" do
    get :show, :id => roleusuarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => roleusuarios(:one).to_param
    assert_response :success
  end

  test "should update roleusuario" do
    put :update, :id => roleusuarios(:one).to_param, :roleusuario => { }
    assert_redirected_to roleusuario_path(assigns(:roleusuario))
  end

  test "should destroy roleusuario" do
    assert_difference('Roleusuario.count', -1) do
      delete :destroy, :id => roleusuarios(:one).to_param
    end

    assert_redirected_to roleusuarios_path
  end
end
