require 'test_helper'

class TaskHelpersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_helpers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_helper" do
    assert_difference('TaskHelper.count') do
      post :create, :task_helper => { }
    end

    assert_redirected_to task_helper_path(assigns(:task_helper))
  end

  test "should show task_helper" do
    get :show, :id => task_helpers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => task_helpers(:one).to_param
    assert_response :success
  end

  test "should update task_helper" do
    put :update, :id => task_helpers(:one).to_param, :task_helper => { }
    assert_redirected_to task_helper_path(assigns(:task_helper))
  end

  test "should destroy task_helper" do
    assert_difference('TaskHelper.count', -1) do
      delete :destroy, :id => task_helpers(:one).to_param
    end

    assert_redirected_to task_helpers_path
  end
end
