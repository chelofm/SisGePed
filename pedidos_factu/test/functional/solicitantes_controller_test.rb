require 'test_helper'

class SolicitantesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitante" do
    assert_difference('Solicitante.count') do
      post :create, :solicitante => { }
    end

    assert_redirected_to solicitante_path(assigns(:solicitante))
  end

  test "should show solicitante" do
    get :show, :id => solicitantes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => solicitantes(:one).to_param
    assert_response :success
  end

  test "should update solicitante" do
    put :update, :id => solicitantes(:one).to_param, :solicitante => { }
    assert_redirected_to solicitante_path(assigns(:solicitante))
  end

  test "should destroy solicitante" do
    assert_difference('Solicitante.count', -1) do
      delete :destroy, :id => solicitantes(:one).to_param
    end

    assert_redirected_to solicitantes_path
  end
end
