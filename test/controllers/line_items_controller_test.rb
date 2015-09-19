require 'test_helper'

class LineItemsControllerTest < ActionController::TestCase
  setup do
    @line_item = line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_item" do
    assert_difference('LineItem.count') do
      post :create, params: { line_item: { cart_id: @line_item.cart_id, product_id: @line_item.product_id } }
    end

    assert_redirected_to line_item_path(LineItem.last)
  end

  test "should show line_item" do
    get :show, params: { id: @line_item }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @line_item }
    assert_response :success
  end

  test "should update line_item" do
    patch :update, params: { id: @line_item, line_item: { cart_id: @line_item.cart_id, product_id: @line_item.product_id } }
    assert_redirected_to line_item_path(@line_item)
  end

  test "should destroy line_item" do
    assert_difference('LineItem.count', -1) do
      delete :destroy, params: { id: @line_item }
    end

    assert_redirected_to line_items_path
  end
end
