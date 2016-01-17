require 'test_helper'

class GondollasControllerTest < ActionController::TestCase
  setup do
    @gondolla = gondollas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gondollas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gondolla" do
    assert_difference('Gondolla.count') do
      post :create, gondolla: { last_location: @gondolla.last_location, plate: @gondolla.plate, type: @gondolla.type }
    end

    assert_redirected_to gondolla_path(assigns(:gondolla))
  end

  test "should show gondolla" do
    get :show, id: @gondolla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gondolla
    assert_response :success
  end

  test "should update gondolla" do
    patch :update, id: @gondolla, gondolla: { last_location: @gondolla.last_location, plate: @gondolla.plate, type: @gondolla.type }
    assert_redirected_to gondolla_path(assigns(:gondolla))
  end

  test "should destroy gondolla" do
    assert_difference('Gondolla.count', -1) do
      delete :destroy, id: @gondolla
    end

    assert_redirected_to gondollas_path
  end
end
