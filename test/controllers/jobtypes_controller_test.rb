require 'test_helper'

class JobtypesControllerTest < ActionController::TestCase
  setup do
    @jobtype = jobtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobtype" do
    assert_difference('Jobtype.count') do
      post :create, jobtype: { name: @jobtype.name }
    end

    assert_redirected_to jobtype_path(assigns(:jobtype))
  end

  test "should show jobtype" do
    get :show, id: @jobtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobtype
    assert_response :success
  end

  test "should update jobtype" do
    patch :update, id: @jobtype, jobtype: { name: @jobtype.name }
    assert_redirected_to jobtype_path(assigns(:jobtype))
  end

  test "should destroy jobtype" do
    assert_difference('Jobtype.count', -1) do
      delete :destroy, id: @jobtype
    end

    assert_redirected_to jobtypes_path
  end
end
