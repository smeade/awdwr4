require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title: 'Lorem Ipsum',
      description: 'Wibbles are fun!',
      image_url: 'lorem.jpg',
      price: 19.95
    }
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
      post :create, product: @update
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
    patch :update, id: @product, product: @update
    assert_redirected_to product_path(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, params: { id: @product }
    end

    assert_redirected_to products_path
  end
end
