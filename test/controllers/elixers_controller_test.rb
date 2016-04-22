require 'test_helper'

class ElixersControllerTest < ActionController::TestCase
  setup do
    @elixer = elixers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elixers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elixer" do
    assert_difference('Elixer.count') do
      post :create, elixer: {  }
    end

    assert_redirected_to elixer_path(assigns(:elixer))
  end

  test "should show elixer" do
    get :show, id: @elixer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elixer
    assert_response :success
  end

  test "should update elixer" do
    patch :update, id: @elixer, elixer: {  }
    assert_redirected_to elixer_path(assigns(:elixer))
  end

  test "should destroy elixer" do
    assert_difference('Elixer.count', -1) do
      delete :destroy, id: @elixer
    end

    assert_redirected_to elixers_path
  end
end
