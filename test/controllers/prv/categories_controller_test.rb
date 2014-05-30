require 'test_helper'

class Prv::CategoriesControllerTest < ActionController::TestCase
  setup do
    @prv_category = prv_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prv_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prv_category" do
    assert_difference('Prv::Category.count') do
      post :create, prv_category: { name: @prv_category.name }
    end

    assert_redirected_to prv_category_path(assigns(:prv_category))
  end

  test "should show prv_category" do
    get :show, id: @prv_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prv_category
    assert_response :success
  end

  test "should update prv_category" do
    patch :update, id: @prv_category, prv_category: { name: @prv_category.name }
    assert_redirected_to prv_category_path(assigns(:prv_category))
  end

  test "should destroy prv_category" do
    assert_difference('Prv::Category.count', -1) do
      delete :destroy, id: @prv_category
    end

    assert_redirected_to prv_categories_path
  end
end
