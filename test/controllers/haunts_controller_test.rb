require 'test_helper'

class HauntsControllerTest < ActionController::TestCase
  setup do
    @haunt = haunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haunt" do
    assert_difference('Haunt.count') do
      post :create, haunt: { address: @haunt.address, description: @haunt.description, latitude: @haunt.latitude, longitude: @haunt.longitude, title: @haunt.title }
    end

    assert_redirected_to haunt_path(assigns(:haunt))
  end

  test "should show haunt" do
    get :show, id: @haunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haunt
    assert_response :success
  end

  test "should update haunt" do
    patch :update, id: @haunt, haunt: { address: @haunt.address, description: @haunt.description, latitude: @haunt.latitude, longitude: @haunt.longitude, title: @haunt.title }
    assert_redirected_to haunt_path(assigns(:haunt))
  end

  test "should destroy haunt" do
    assert_difference('Haunt.count', -1) do
      delete :destroy, id: @haunt
    end

    assert_redirected_to haunts_path
  end
end
