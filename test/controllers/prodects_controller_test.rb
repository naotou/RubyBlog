require 'test_helper'

class ProdectsControllerTest < ActionController::TestCase
  setup do
    @prodect = prodects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prodects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prodect" do
    assert_difference('Prodect.count') do
      post :create, prodect: { desc: @prodect.desc, name: @prodect.name, price: @prodect.price }
    end

    assert_redirected_to prodect_path(assigns(:prodect))
  end

  test "should show prodect" do
    get :show, id: @prodect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prodect
    assert_response :success
  end

  test "should update prodect" do
    patch :update, id: @prodect, prodect: { desc: @prodect.desc, name: @prodect.name, price: @prodect.price }
    assert_redirected_to prodect_path(assigns(:prodect))
  end

  test "should destroy prodect" do
    assert_difference('Prodect.count', -1) do
      delete :destroy, id: @prodect
    end

    assert_redirected_to prodects_path
  end
end
