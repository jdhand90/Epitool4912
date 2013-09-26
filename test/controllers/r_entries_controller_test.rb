require 'test_helper'

class REntriesControllerTest < ActionController::TestCase
  setup do
    @r_entry = r_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_entry" do
    assert_difference('REntry.count') do
      post :create, r_entry: { entry: @r_entry.entry, order: @r_entry.order, properties: @r_entry.properties, r_language_id: @r_entry.r_language_id, title: @r_entry.title }
    end

    assert_redirected_to r_entry_path(assigns(:r_entry))
  end

  test "should show r_entry" do
    get :show, id: @r_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_entry
    assert_response :success
  end

  test "should update r_entry" do
    patch :update, id: @r_entry, r_entry: { entry: @r_entry.entry, order: @r_entry.order, properties: @r_entry.properties, r_language_id: @r_entry.r_language_id, title: @r_entry.title }
    assert_redirected_to r_entry_path(assigns(:r_entry))
  end

  test "should destroy r_entry" do
    assert_difference('REntry.count', -1) do
      delete :destroy, id: @r_entry
    end

    assert_redirected_to r_entries_path
  end
end
