require 'test_helper'

class CleansesControllerTest < ActionController::TestCase
  setup do
    @cleanse = cleanses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cleanses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cleanse" do
    assert_difference('Cleanse.count') do
      post :create, cleanse: { ingredients: @cleanse.ingredients, long_description: @cleanse.long_description, name: @cleanse.name, price: @cleanse.price, short_description: @cleanse.short_description }
    end

    assert_redirected_to cleanse_path(assigns(:cleanse))
  end

  test "should show cleanse" do
    get :show, id: @cleanse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cleanse
    assert_response :success
  end

  test "should update cleanse" do
    patch :update, id: @cleanse, cleanse: { ingredients: @cleanse.ingredients, long_description: @cleanse.long_description, name: @cleanse.name, price: @cleanse.price, short_description: @cleanse.short_description }
    assert_redirected_to cleanse_path(assigns(:cleanse))
  end

  test "should destroy cleanse" do
    assert_difference('Cleanse.count', -1) do
      delete :destroy, id: @cleanse
    end

    assert_redirected_to cleanses_path
  end
end
