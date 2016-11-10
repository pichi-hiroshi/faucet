require 'test_helper'

class FaucetsControllerTest < ActionController::TestCase
  setup do
    @faucet = faucets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faucets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faucet" do
    assert_difference('Faucet.count') do
      post :create, faucet: { buyingprice: @faucet.buyingprice, category: @faucet.category, discountrate: @faucet.discountrate, discription: @faucet.discription, fn1_content: @faucet.fn1_content, fn1_img: @faucet.fn1_img, fn1_title: @faucet.fn1_title, fn1_url: @faucet.fn1_url, main_img: @faucet.main_img, manufacturer: @faucet.manufacturer, model: @faucet.model, properprice: @faucet.properprice, sellingprice: @faucet.sellingprice }
    end

    assert_redirected_to faucet_path(assigns(:faucet))
  end

  test "should show faucet" do
    get :show, id: @faucet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faucet
    assert_response :success
  end

  test "should update faucet" do
    patch :update, id: @faucet, faucet: { buyingprice: @faucet.buyingprice, category: @faucet.category, discountrate: @faucet.discountrate, discription: @faucet.discription, fn1_content: @faucet.fn1_content, fn1_img: @faucet.fn1_img, fn1_title: @faucet.fn1_title, fn1_url: @faucet.fn1_url, main_img: @faucet.main_img, manufacturer: @faucet.manufacturer, model: @faucet.model, properprice: @faucet.properprice, sellingprice: @faucet.sellingprice }
    assert_redirected_to faucet_path(assigns(:faucet))
  end

  test "should destroy faucet" do
    assert_difference('Faucet.count', -1) do
      delete :destroy, id: @faucet
    end

    assert_redirected_to faucets_path
  end
end
