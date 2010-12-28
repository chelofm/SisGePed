require 'test_helper'

class EntidadfinancierasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entidadfinancieras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entidadfinanciera" do
    assert_difference('Entidadfinanciera.count') do
      post :create, :entidadfinanciera => { }
    end

    assert_redirected_to entidadfinanciera_path(assigns(:entidadfinanciera))
  end

  test "should show entidadfinanciera" do
    get :show, :id => entidadfinancieras(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => entidadfinancieras(:one).to_param
    assert_response :success
  end

  test "should update entidadfinanciera" do
    put :update, :id => entidadfinancieras(:one).to_param, :entidadfinanciera => { }
    assert_redirected_to entidadfinanciera_path(assigns(:entidadfinanciera))
  end

  test "should destroy entidadfinanciera" do
    assert_difference('Entidadfinanciera.count', -1) do
      delete :destroy, :id => entidadfinancieras(:one).to_param
    end

    assert_redirected_to entidadfinancieras_path
  end
end
