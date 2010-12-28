require 'test_helper'

class ItempedidosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itempedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itempedido" do
    assert_difference('Itempedido.count') do
      post :create, :itempedido => { }
    end

    assert_redirected_to itempedido_path(assigns(:itempedido))
  end

  test "should show itempedido" do
    get :show, :id => itempedidos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itempedidos(:one).to_param
    assert_response :success
  end

  test "should update itempedido" do
    put :update, :id => itempedidos(:one).to_param, :itempedido => { }
    assert_redirected_to itempedido_path(assigns(:itempedido))
  end

  test "should destroy itempedido" do
    assert_difference('Itempedido.count', -1) do
      delete :destroy, :id => itempedidos(:one).to_param
    end

    assert_redirected_to itempedidos_path
  end
end
