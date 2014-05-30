require 'test_helper'

class Prv::ItemsControllerTest < ActionController::TestCase
  setup do
    @prv_item = prv_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prv_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prv_item" do
    assert_difference('Prv::Item.count') do
      post :create, prv_item: { category_id: @prv_item.category_id, description: @prv_item.description, title: @prv_item.title }
    end

    assert_redirected_to prv_item_path(assigns(:prv_item))
  end

  test "should show prv_item" do
    get :show, id: @prv_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prv_item
    assert_response :success
  end

  test "should update prv_item" do
    patch :update, id: @prv_item, prv_item: { category_id: @prv_item.category_id, description: @prv_item.description, title: @prv_item.title }
    assert_redirected_to prv_item_path(assigns(:prv_item))
  end

  test "should destroy prv_item" do
    assert_difference('Prv::Item.count', -1) do
      delete :destroy, id: @prv_item
    end

    assert_redirected_to prv_items_path
  end
end
