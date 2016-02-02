require 'test_helper'

class JuicesControllerTest < ActionController::TestCase
  setup do
    @juice = juices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juice" do
    assert_difference('Juice.count') do
      post :create, juice: {  }
    end

    assert_redirected_to juice_path(assigns(:juice))
  end

  test "should show juice" do
    get :show, id: @juice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juice
    assert_response :success
  end

  test "should update juice" do
    patch :update, id: @juice, juice: {  }
    assert_redirected_to juice_path(assigns(:juice))
  end

  test "should destroy juice" do
    assert_difference('Juice.count', -1) do
      delete :destroy, id: @juice
    end

    assert_redirected_to juices_path
  end
end
