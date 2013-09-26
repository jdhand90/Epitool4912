require 'test_helper'

class RContactsControllerTest < ActionController::TestCase
  setup do
    @r_contact = r_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_contact" do
    assert_difference('RContact.count') do
      post :create, r_contact: { email: @r_contact.email, name: @r_contact.name, profession: @r_contact.profession, properties: @r_contact.properties }
    end

    assert_redirected_to r_contact_path(assigns(:r_contact))
  end

  test "should show r_contact" do
    get :show, id: @r_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_contact
    assert_response :success
  end

  test "should update r_contact" do
    patch :update, id: @r_contact, r_contact: { email: @r_contact.email, name: @r_contact.name, profession: @r_contact.profession, properties: @r_contact.properties }
    assert_redirected_to r_contact_path(assigns(:r_contact))
  end

  test "should destroy r_contact" do
    assert_difference('RContact.count', -1) do
      delete :destroy, id: @r_contact
    end

    assert_redirected_to r_contacts_path
  end
end
