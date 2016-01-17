require 'test_helper'

class GondolasControllerTest < ActionController::TestCase
  setup do
    @gondola = gondolas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gondolas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gondola" do
    assert_difference('Gondola.count') do
      post :create, gondola: { last_location: @gondola.last_location, plate: @gondola.plate, sort: @gondola.sort }
    end

    assert_redirected_to gondola_path(assigns(:gondola))
  end

  test "should show gondola" do
    get :show, id: @gondola
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gondola
    assert_response :success
  end

  test "should update gondola" do
    patch :update, id: @gondola, gondola: { last_location: @gondola.last_location, plate: @gondola.plate, sort: @gondola.sort }
    assert_redirected_to gondola_path(assigns(:gondola))
  end

  test "should destroy gondola" do
    assert_difference('Gondola.count', -1) do
      delete :destroy, id: @gondola
    end

    assert_redirected_to gondolas_path
  end
end
