require 'test_helper'

class RPagesToEntriesControllerTest < ActionController::TestCase
  setup do
    @r_pages_to_entry = r_pages_to_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_pages_to_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_pages_to_entry" do
    assert_difference('RPagesToEntry.count') do
      post :create, r_pages_to_entry: { properties: @r_pages_to_entry.properties, r_entry_id: @r_pages_to_entry.r_entry_id, r_page_id: @r_pages_to_entry.r_page_id }
    end

    assert_redirected_to r_pages_to_entry_path(assigns(:r_pages_to_entry))
  end

  test "should show r_pages_to_entry" do
    get :show, id: @r_pages_to_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_pages_to_entry
    assert_response :success
  end

  test "should update r_pages_to_entry" do
    patch :update, id: @r_pages_to_entry, r_pages_to_entry: { properties: @r_pages_to_entry.properties, r_entry_id: @r_pages_to_entry.r_entry_id, r_page_id: @r_pages_to_entry.r_page_id }
    assert_redirected_to r_pages_to_entry_path(assigns(:r_pages_to_entry))
  end

  test "should destroy r_pages_to_entry" do
    assert_difference('RPagesToEntry.count', -1) do
      delete :destroy, id: @r_pages_to_entry
    end

    assert_redirected_to r_pages_to_entries_path
  end
end
