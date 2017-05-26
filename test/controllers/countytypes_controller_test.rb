require 'test_helper'

class CountytypesControllerTest < ActionController::TestCase
  setup do
    @countytype = countytypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:countytypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create countytype" do
    assert_difference('Countytype.count') do
      post :create, countytype: { type: @countytype.type }
    end

    assert_redirected_to countytype_path(assigns(:countytype))
  end

  test "should show countytype" do
    get :show, id: @countytype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @countytype
    assert_response :success
  end

  test "should update countytype" do
    patch :update, id: @countytype, countytype: { type: @countytype.type }
    assert_redirected_to countytype_path(assigns(:countytype))
  end

  test "should destroy countytype" do
    assert_difference('Countytype.count', -1) do
      delete :destroy, id: @countytype
    end

    assert_redirected_to countytypes_path
  end
end
