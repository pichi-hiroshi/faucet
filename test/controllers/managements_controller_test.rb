require 'test_helper'

class ManagementsControllerTest < ActionController::TestCase
  setup do
    @management = managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create management" do
    assert_difference('Management.count') do
      post :create, management: { address: @management.address, branch: @management.branch, company: @management.company, contractor: @management.contractor, kbratio: @management.kbratio, oasyseigyo: @management.oasyseigyo, oasyssegment: @management.oasyssegment, postalcode: @management.postalcode, tel: @management.tel }
    end

    assert_redirected_to management_path(assigns(:management))
  end

  test "should show management" do
    get :show, id: @management
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @management
    assert_response :success
  end

  test "should update management" do
    patch :update, id: @management, management: { address: @management.address, branch: @management.branch, company: @management.company, contractor: @management.contractor, kbratio: @management.kbratio, oasyseigyo: @management.oasyseigyo, oasyssegment: @management.oasyssegment, postalcode: @management.postalcode, tel: @management.tel }
    assert_redirected_to management_path(assigns(:management))
  end

  test "should destroy management" do
    assert_difference('Management.count', -1) do
      delete :destroy, id: @management
    end

    assert_redirected_to managements_path
  end
end
