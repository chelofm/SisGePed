require 'test_helper'

class DireccionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direccion" do
    assert_difference('Direccion.count') do
      post :create, :direccion => { }
    end

    assert_redirected_to direccion_path(assigns(:direccion))
  end

  test "should show direccion" do
    get :show, :id => direccions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => direccions(:one).to_param
    assert_response :success
  end

  test "should update direccion" do
    put :update, :id => direccions(:one).to_param, :direccion => { }
    assert_redirected_to direccion_path(assigns(:direccion))
  end

  test "should destroy direccion" do
    assert_difference('Direccion.count', -1) do
      delete :destroy, :id => direccions(:one).to_param
    end

    assert_redirected_to direccions_path
  end
end
