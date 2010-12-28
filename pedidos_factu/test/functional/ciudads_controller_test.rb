require 'test_helper'

class CiudadsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ciudads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ciudad" do
    assert_difference('Ciudad.count') do
      post :create, :ciudad => { }
    end

    assert_redirected_to ciudad_path(assigns(:ciudad))
  end

  test "should show ciudad" do
    get :show, :id => ciudads(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ciudads(:one).to_param
    assert_response :success
  end

  test "should update ciudad" do
    put :update, :id => ciudads(:one).to_param, :ciudad => { }
    assert_redirected_to ciudad_path(assigns(:ciudad))
  end

  test "should destroy ciudad" do
    assert_difference('Ciudad.count', -1) do
      delete :destroy, :id => ciudads(:one).to_param
    end

    assert_redirected_to ciudads_path
  end
end
