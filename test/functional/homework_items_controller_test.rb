require 'test_helper'

class HomeworkItemsControllerTest < ActionController::TestCase
  setup do
    @homework_item = homework_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homework_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homework_item" do
    assert_difference('HomeworkItem.count') do
      post :create, homework_item: {  }
    end

    assert_redirected_to homework_item_path(assigns(:homework_item))
  end

  test "should show homework_item" do
    get :show, id: @homework_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homework_item
    assert_response :success
  end

  test "should update homework_item" do
    put :update, id: @homework_item, homework_item: {  }
    assert_redirected_to homework_item_path(assigns(:homework_item))
  end

  test "should destroy homework_item" do
    assert_difference('HomeworkItem.count', -1) do
      delete :destroy, id: @homework_item
    end

    assert_redirected_to homework_items_path
  end
end
