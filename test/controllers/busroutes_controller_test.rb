require 'test_helper'

class BusroutesControllerTest < ActionController::TestCase
  setup do
    @busroute = busroutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:busroutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create busroute" do
    assert_difference('Busroute.count') do
      post :create, busroute: { description: @busroute.description, title: @busroute.title }
    end

    assert_redirected_to busroute_path(assigns(:busroute))
  end

  test "should show busroute" do
    get :show, id: @busroute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @busroute
    assert_response :success
  end

  test "should update busroute" do
    patch :update, id: @busroute, busroute: { description: @busroute.description, title: @busroute.title }
    assert_redirected_to busroute_path(assigns(:busroute))
  end

  test "should destroy busroute" do
    assert_difference('Busroute.count', -1) do
      delete :destroy, id: @busroute
    end

    assert_redirected_to busroutes_path
  end
end
