require 'test_helper'

class Request1sControllerTest < ActionController::TestCase
  setup do
    @request1 = request1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request1" do
    assert_difference('Request1.count') do
      post :create, request1: { negotiable: @request1.negotiable, price: @request1.price, what: @request1.what, when: @request1.when, where: @request1.where }
    end

    assert_redirected_to request1_path(assigns(:request1))
  end

  test "should show request1" do
    get :show, id: @request1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request1
    assert_response :success
  end

  test "should update request1" do
    patch :update, id: @request1, request1: { negotiable: @request1.negotiable, price: @request1.price, what: @request1.what, when: @request1.when, where: @request1.where }
    assert_redirected_to request1_path(assigns(:request1))
  end

  test "should destroy request1" do
    assert_difference('Request1.count', -1) do
      delete :destroy, id: @request1
    end

    assert_redirected_to request1s_path
  end
end
