require 'test_helper'

class GroupActivitiesControllerTest < ActionController::TestCase
  setup do
    @group_activity = group_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_activity" do
    assert_difference('GroupActivity.count') do
      post :create, group_activity: { description: @group_activity.description, duration: @group_activity.duration, ended_at: @group_activity.ended_at, location: @group_activity.location, name: @group_activity.name, published: @group_activity.published, started_at: @group_activity.started_at }
    end

    assert_redirected_to group_activity_path(assigns(:group_activity))
  end

  test "should show group_activity" do
    get :show, id: @group_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_activity
    assert_response :success
  end

  test "should update group_activity" do
    patch :update, id: @group_activity, group_activity: { description: @group_activity.description, duration: @group_activity.duration, ended_at: @group_activity.ended_at, location: @group_activity.location, name: @group_activity.name, published: @group_activity.published, started_at: @group_activity.started_at }
    assert_redirected_to group_activity_path(assigns(:group_activity))
  end

  test "should destroy group_activity" do
    assert_difference('GroupActivity.count', -1) do
      delete :destroy, id: @group_activity
    end

    assert_redirected_to group_activities_path
  end
end
