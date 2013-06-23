require 'test_helper'

class ClinitianMessagesControllerTest < ActionController::TestCase
  setup do
    @clinitian_message = clinitian_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinitian_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinitian_message" do
    assert_difference('ClinitianMessage.count') do
      post :create, clinitian_message: { message: @clinitian_message.message, mood_id: @clinitian_message.mood_id }
    end

    assert_redirected_to clinitian_message_path(assigns(:clinitian_message))
  end

  test "should show clinitian_message" do
    get :show, id: @clinitian_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinitian_message
    assert_response :success
  end

  test "should update clinitian_message" do
    put :update, id: @clinitian_message, clinitian_message: { message: @clinitian_message.message, mood_id: @clinitian_message.mood_id }
    assert_redirected_to clinitian_message_path(assigns(:clinitian_message))
  end

  test "should destroy clinitian_message" do
    assert_difference('ClinitianMessage.count', -1) do
      delete :destroy, id: @clinitian_message
    end

    assert_redirected_to clinitian_messages_path
  end
end
