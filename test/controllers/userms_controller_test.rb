require 'test_helper'

class UsermsControllerTest < ActionController::TestCase
  setup do
    @userm = userms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userm" do
    assert_difference('Userm.count') do
      post :create, userm: { email: @userm.email, login: @userm.login, name: @userm.name }
    end

    assert_redirected_to userm_path(assigns(:userm))
  end

  test "should show userm" do
    get :show, id: @userm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userm
    assert_response :success
  end

  test "should update userm" do
    patch :update, id: @userm, userm: { email: @userm.email, login: @userm.login, name: @userm.name }
    assert_redirected_to userm_path(assigns(:userm))
  end

  test "should destroy userm" do
    assert_difference('Userm.count', -1) do
      delete :destroy, id: @userm
    end

    assert_redirected_to userms_path
  end
end
