require 'test_helper'

class RishabhsControllerTest < ActionController::TestCase
  setup do
    @rishabh = rishabhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rishabhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rishabh" do
    assert_difference('Rishabh.count') do
      post :create, rishabh: { designation: @rishabh.designation, name: @rishabh.name, phone_no: @rishabh.phone_no }
    end

    assert_redirected_to rishabh_path(assigns(:rishabh))
  end

  test "should show rishabh" do
    get :show, id: @rishabh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rishabh
    assert_response :success
  end

  test "should update rishabh" do
    patch :update, id: @rishabh, rishabh: { designation: @rishabh.designation, name: @rishabh.name, phone_no: @rishabh.phone_no }
    assert_redirected_to rishabh_path(assigns(:rishabh))
  end

  test "should destroy rishabh" do
    assert_difference('Rishabh.count', -1) do
      delete :destroy, id: @rishabh
    end

    assert_redirected_to rishabhs_path
  end
end
