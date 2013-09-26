require 'test_helper'

class RPagesControllerTest < ActionController::TestCase
  setup do
    @r_page = r_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_page" do
    assert_difference('RPage.count') do
      post :create, r_page: { name: @r_page.name, properties: @r_page.properties, r_language_id: @r_page.r_language_id, template: @r_page.template }
    end

    assert_redirected_to r_page_path(assigns(:r_page))
  end

  test "should show r_page" do
    get :show, id: @r_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_page
    assert_response :success
  end

  test "should update r_page" do
    patch :update, id: @r_page, r_page: { name: @r_page.name, properties: @r_page.properties, r_language_id: @r_page.r_language_id, template: @r_page.template }
    assert_redirected_to r_page_path(assigns(:r_page))
  end

  test "should destroy r_page" do
    assert_difference('RPage.count', -1) do
      delete :destroy, id: @r_page
    end

    assert_redirected_to r_pages_path
  end
end
