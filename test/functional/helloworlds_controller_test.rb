require 'test_helper'

class HelloworldsControllerTest < ActionController::TestCase
  setup do
    @helloworld = helloworlds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helloworlds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helloworld" do
    assert_difference('Helloworld.count') do
      post :create, helloworld: { sayhello: @helloworld.sayhello }
    end

    assert_redirected_to helloworld_path(assigns(:helloworld))
  end

  test "should show helloworld" do
    get :show, id: @helloworld
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @helloworld
    assert_response :success
  end

  test "should update helloworld" do
    put :update, id: @helloworld, helloworld: { sayhello: @helloworld.sayhello }
    assert_redirected_to helloworld_path(assigns(:helloworld))
  end

  test "should destroy helloworld" do
    assert_difference('Helloworld.count', -1) do
      delete :destroy, id: @helloworld
    end

    assert_redirected_to helloworlds_path
  end
end
