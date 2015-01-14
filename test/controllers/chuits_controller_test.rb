require 'test_helper'

class ChuitsControllerTest < ActionController::TestCase
  setup do
    @chuit = chuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chuit" do
    assert_difference('Chuit.count') do
      post :create, chuit: { text: @chuit.text, usuario_id: @chuit.usuario_id }
    end

    assert_redirected_to chuit_path(assigns(:chuit))
  end

  test "should show chuit" do
    get :show, id: @chuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chuit
    assert_response :success
  end

  test "should update chuit" do
    patch :update, id: @chuit, chuit: { text: @chuit.text, usuario_id: @chuit.usuario_id }
    assert_redirected_to chuit_path(assigns(:chuit))
  end

  test "should destroy chuit" do
    assert_difference('Chuit.count', -1) do
      delete :destroy, id: @chuit
    end

    assert_redirected_to chuits_path
  end
end
