require 'test_helper'

class RLanguagesControllerTest < ActionController::TestCase
  setup do
    @r_language = r_languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_language" do
    assert_difference('RLanguage.count') do
      post :create, r_language: { language: @r_language.language, properties: @r_language.properties }
    end

    assert_redirected_to r_language_path(assigns(:r_language))
  end

  test "should show r_language" do
    get :show, id: @r_language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_language
    assert_response :success
  end

  test "should update r_language" do
    patch :update, id: @r_language, r_language: { language: @r_language.language, properties: @r_language.properties }
    assert_redirected_to r_language_path(assigns(:r_language))
  end

  test "should destroy r_language" do
    assert_difference('RLanguage.count', -1) do
      delete :destroy, id: @r_language
    end

    assert_redirected_to r_languages_path
  end
end
