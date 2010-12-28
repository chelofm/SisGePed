require 'test_helper'

class UnidadBeneficiariasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unidad_beneficiarias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unidad_beneficiaria" do
    assert_difference('UnidadBeneficiaria.count') do
      post :create, :unidad_beneficiaria => { }
    end

    assert_redirected_to unidad_beneficiaria_path(assigns(:unidad_beneficiaria))
  end

  test "should show unidad_beneficiaria" do
    get :show, :id => unidad_beneficiarias(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unidad_beneficiarias(:one).to_param
    assert_response :success
  end

  test "should update unidad_beneficiaria" do
    put :update, :id => unidad_beneficiarias(:one).to_param, :unidad_beneficiaria => { }
    assert_redirected_to unidad_beneficiaria_path(assigns(:unidad_beneficiaria))
  end

  test "should destroy unidad_beneficiaria" do
    assert_difference('UnidadBeneficiaria.count', -1) do
      delete :destroy, :id => unidad_beneficiarias(:one).to_param
    end

    assert_redirected_to unidad_beneficiarias_path
  end
end
