require 'test_helper'

class WerksControllerTest < ActionController::TestCase
  setup do
    @werk = werks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:werks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create werk" do
    assert_difference('Werk.count') do
      post :create, werk: { name: @werk.name }
    end

    assert_redirected_to werk_path(assigns(:werk))
  end

  test "should show werk" do
    get :show, id: @werk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @werk
    assert_response :success
  end

  test "should update werk" do
    patch :update, id: @werk, werk: { name: @werk.name }
    assert_redirected_to werk_path(assigns(:werk))
  end

  test "should destroy werk" do
    assert_difference('Werk.count', -1) do
      delete :destroy, id: @werk
    end

    assert_redirected_to werks_path
  end
end
