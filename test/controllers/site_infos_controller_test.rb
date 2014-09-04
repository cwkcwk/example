require 'test_helper'

class SiteInfosControllerTest < ActionController::TestCase
  setup do
    @site_info = site_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_info" do
    assert_difference('SiteInfo.count') do
      post :create, site_info: { address: @site_info.address, email: @site_info.email, fax: @site_info.fax, main_text: @site_info.main_text, phone: @site_info.phone }
    end

    assert_redirected_to site_info_path(assigns(:site_info))
  end

  test "should show site_info" do
    get :show, id: @site_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_info
    assert_response :success
  end

  test "should update site_info" do
    patch :update, id: @site_info, site_info: { address: @site_info.address, email: @site_info.email, fax: @site_info.fax, main_text: @site_info.main_text, phone: @site_info.phone }
    assert_redirected_to site_info_path(assigns(:site_info))
  end

  test "should destroy site_info" do
    assert_difference('SiteInfo.count', -1) do
      delete :destroy, id: @site_info
    end

    assert_redirected_to site_infos_path
  end
end
