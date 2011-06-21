require 'test_helper'

class DroidsControllerTest < ActionController::TestCase
  setup do
    @droid = droids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:droids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create droid" do
    assert_difference('Droid.count') do
      post :create, :droid => @droid.attributes
    end

    assert_redirected_to droid_path(assigns(:droid))
  end

  test "should show droid" do
    get :show, :id => @droid.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @droid.to_param
    assert_response :success
  end

  test "should update droid" do
    put :update, :id => @droid.to_param, :droid => @droid.attributes
    assert_redirected_to droid_path(assigns(:droid))
  end

  test "should destroy droid" do
    assert_difference('Droid.count', -1) do
      delete :destroy, :id => @droid.to_param
    end

    assert_redirected_to droids_path
  end
end
