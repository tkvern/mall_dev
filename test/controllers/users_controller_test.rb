require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { activate_token: @user.activate_token, active_token_at: @user.active_token_at, current_login_at: @user.current_login_at, current_login_ip: @user.current_login_ip, email: @user.email, is_activated: @user.is_activated, last_login_at: @user.last_login_at, last_login_ip: @user.last_login_ip, mobile: @user.mobile, pass_reset_at: @user.pass_reset_at, pass_reset_token: @user.pass_reset_token, pass_reset_token_at: @user.pass_reset_token_at, pasword_hash: @user.pasword_hash, roles: @user.roles, username: @user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { activate_token: @user.activate_token, active_token_at: @user.active_token_at, current_login_at: @user.current_login_at, current_login_ip: @user.current_login_ip, email: @user.email, is_activated: @user.is_activated, last_login_at: @user.last_login_at, last_login_ip: @user.last_login_ip, mobile: @user.mobile, pass_reset_at: @user.pass_reset_at, pass_reset_token: @user.pass_reset_token, pass_reset_token_at: @user.pass_reset_token_at, pasword_hash: @user.pasword_hash, roles: @user.roles, username: @user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
