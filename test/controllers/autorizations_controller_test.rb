require 'test_helper'

class AutorizationsControllerTest < ActionController::TestCase
  setup do
    @autorization = autorizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autorizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autorization" do
    assert_difference('Autorization.count') do
      post :create, autorization: { number: @autorization.number, password: @autorization.password }
    end

    assert_redirected_to autorization_path(assigns(:autorization))
  end

  test "should show autorization" do
    get :show, id: @autorization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autorization
    assert_response :success
  end

  test "should update autorization" do
    patch :update, id: @autorization, autorization: { number: @autorization.number, password: @autorization.password }
    assert_redirected_to autorization_path(assigns(:autorization))
  end

  test "should destroy autorization" do
    assert_difference('Autorization.count', -1) do
      delete :destroy, id: @autorization
    end

    assert_redirected_to autorizations_path
  end
end
