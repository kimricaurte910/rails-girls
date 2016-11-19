require 'test_helper'

class KimsControllerTest < ActionController::TestCase
  setup do
    @kim = kims(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kims)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kim" do
    assert_difference('Kim.count') do
      post :create, kim: { description: @kim.description, name: @kim.name, picture: @kim.picture }
    end

    assert_redirected_to kim_path(assigns(:kim))
  end

  test "should show kim" do
    get :show, id: @kim
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kim
    assert_response :success
  end

  test "should update kim" do
    patch :update, id: @kim, kim: { description: @kim.description, name: @kim.name, picture: @kim.picture }
    assert_redirected_to kim_path(assigns(:kim))
  end

  test "should destroy kim" do
    assert_difference('Kim.count', -1) do
      delete :destroy, id: @kim
    end

    assert_redirected_to kims_path
  end
end
