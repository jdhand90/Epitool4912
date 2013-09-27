require 'test_helper'

class RLinksControllerTest < ActionController::TestCase
  setup do
    @r_link = r_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_link" do
    assert_difference('RLink.count') do
      post :create, r_link: { link: @r_link.link, properties: @r_link.properties }
    end

    assert_redirected_to r_link_path(assigns(:r_link))
  end

  test "should show r_link" do
    get :show, id: @r_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_link
    assert_response :success
  end

  test "should update r_link" do
    patch :update, id: @r_link, r_link: { link: @r_link.link, properties: @r_link.properties }
    assert_redirected_to r_link_path(assigns(:r_link))
  end

  test "should destroy r_link" do
    assert_difference('RLink.count', -1) do
      delete :destroy, id: @r_link
    end

    assert_redirected_to r_links_path
  end
end
