require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post :create, params: { cart: {  } }
    end

    assert_redirected_to cart_path(Cart.last)
  end

  test "should show cart" do
    get :show, params: { id: @cart }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @cart }
    assert_response :success
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete :destroy, params: { id: @cart }
    end

    assert_redirected_to carts_path
  end
end