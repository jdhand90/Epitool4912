require 'test_helper'

class RPropertyDefinitionsControllerTest < ActionController::TestCase
  setup do
    @r_property_definition = r_property_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_property_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_property_definition" do
    assert_difference('RPropertyDefinition.count') do
      post :create, r_property_definition: { definition: @r_property_definition.definition, properties: @r_property_definition.properties, property: @r_property_definition.property, symbol: @r_property_definition.symbol, table: @r_property_definition.table }
    end

    assert_redirected_to r_property_definition_path(assigns(:r_property_definition))
  end

  test "should show r_property_definition" do
    get :show, id: @r_property_definition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_property_definition
    assert_response :success
  end

  test "should update r_property_definition" do
    patch :update, id: @r_property_definition, r_property_definition: { definition: @r_property_definition.definition, properties: @r_property_definition.properties, property: @r_property_definition.property, symbol: @r_property_definition.symbol, table: @r_property_definition.table }
    assert_redirected_to r_property_definition_path(assigns(:r_property_definition))
  end

  test "should destroy r_property_definition" do
    assert_difference('RPropertyDefinition.count', -1) do
      delete :destroy, id: @r_property_definition
    end

    assert_redirected_to r_property_definitions_path
  end
end
