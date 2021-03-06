require 'test_helper'

class BulletinsControllerTest < ActionController::TestCase
  setup do
    @bulletin = bulletins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bulletins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bulletin" do
    assert_difference('Bulletin.count') do
      post :create, bulletin: { date: @bulletin.date, deadline: @bulletin.deadline, msg: @bulletin.msg }
    end

    assert_redirected_to bulletin_path(assigns(:bulletin))
  end

  test "should show bulletin" do
    get :show, id: @bulletin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bulletin
    assert_response :success
  end

  test "should update bulletin" do
    put :update, id: @bulletin, bulletin: { date: @bulletin.date, deadline: @bulletin.deadline, msg: @bulletin.msg }
    assert_redirected_to bulletin_path(assigns(:bulletin))
  end

  test "should destroy bulletin" do
    assert_difference('Bulletin.count', -1) do
      delete :destroy, id: @bulletin
    end

    assert_redirected_to bulletins_path
  end
end
