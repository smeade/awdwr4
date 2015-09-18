require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, params: { product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
    end

    assert_redirected_to product_path(Product.last)
  end

  test "should show product" do
    get :show, params: { id: @product }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @product }
    assert_response :success
  end

  test "should update product" do
    patch :update, params: { id: @product, product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title } }
    assert_redirected_to product_path(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, params: { id: @product }
    end

    assert_redirected_to products_path
  end
end
