require 'test_helper'

class Hero1sControllerTest < ActionController::TestCase
  setup do
    @hero1 = hero1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hero1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hero1" do
    assert_difference('Hero1.count') do
      post :create, hero1: { User_id: @hero1.User_id, day: @hero1.day }
    end

    assert_redirected_to hero1_path(assigns(:hero1))
  end

  test "should show hero1" do
    get :show, id: @hero1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hero1
    assert_response :success
  end

  test "should update hero1" do
    patch :update, id: @hero1, hero1: { User_id: @hero1.User_id, day: @hero1.day }
    assert_redirected_to hero1_path(assigns(:hero1))
  end

  test "should destroy hero1" do
    assert_difference('Hero1.count', -1) do
      delete :destroy, id: @hero1
    end

    assert_redirected_to hero1s_path
  end
end
