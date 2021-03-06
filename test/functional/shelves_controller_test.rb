require 'test_helper'

class ShelvesControllerTest < ActionController::TestCase
  setup do
    @shelf = shelves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shelves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shelf" do
    assert_difference('Shelf.count') do
      post :create, shelf: { category_id: @shelf.category_id, description: @shelf.description, link_to: @shelf.link_to, old_price: @shelf.old_price, pic: @shelf.pic, position: @shelf.position, price: @shelf.price, small_title: @shelf.small_title, state: @shelf.state, title: @shelf.title }
    end

    assert_redirected_to shelf_path(assigns(:shelf))
  end

  test "should show shelf" do
    get :show, id: @shelf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shelf
    assert_response :success
  end

  test "should update shelf" do
    put :update, id: @shelf, shelf: { category_id: @shelf.category_id, description: @shelf.description, link_to: @shelf.link_to, old_price: @shelf.old_price, pic: @shelf.pic, position: @shelf.position, price: @shelf.price, small_title: @shelf.small_title, state: @shelf.state, title: @shelf.title }
    assert_redirected_to shelf_path(assigns(:shelf))
  end

  test "should destroy shelf" do
    assert_difference('Shelf.count', -1) do
      delete :destroy, id: @shelf
    end

    assert_redirected_to shelves_path
  end
end
