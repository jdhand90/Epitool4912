require 'test_helper'

class REntriesToLinksControllerTest < ActionController::TestCase
  setup do
    @r_entries_to_link = r_entries_to_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_entries_to_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_entries_to_link" do
    assert_difference('REntriesToLink.count') do
      post :create, r_entries_to_link: { properties: @r_entries_to_link.properties, r_entry_id: @r_entries_to_link.r_entry_id, r_link_id: @r_entries_to_link.r_link_id }
    end

    assert_redirected_to r_entries_to_link_path(assigns(:r_entries_to_link))
  end

  test "should show r_entries_to_link" do
    get :show, id: @r_entries_to_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_entries_to_link
    assert_response :success
  end

  test "should update r_entries_to_link" do
    patch :update, id: @r_entries_to_link, r_entries_to_link: { properties: @r_entries_to_link.properties, r_entry_id: @r_entries_to_link.r_entry_id, r_link_id: @r_entries_to_link.r_link_id }
    assert_redirected_to r_entries_to_link_path(assigns(:r_entries_to_link))
  end

  test "should destroy r_entries_to_link" do
    assert_difference('REntriesToLink.count', -1) do
      delete :destroy, id: @r_entries_to_link
    end

    assert_redirected_to r_entries_to_links_path
  end
end
