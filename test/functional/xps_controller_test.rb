require 'test_helper'

class XpsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xp" do
    assert_difference('Xp.count') do
      post :create, :xp => { }
    end

    assert_redirected_to xp_path(assigns(:xp))
  end

  test "should show xp" do
    get :show, :id => xps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => xps(:one).to_param
    assert_response :success
  end

  test "should update xp" do
    put :update, :id => xps(:one).to_param, :xp => { }
    assert_redirected_to xp_path(assigns(:xp))
  end

  test "should destroy xp" do
    assert_difference('Xp.count', -1) do
      delete :destroy, :id => xps(:one).to_param
    end

    assert_redirected_to xps_path
  end
end
