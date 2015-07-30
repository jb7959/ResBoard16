require 'test_helper'

class ResBoardsControllerTest < ActionController::TestCase
  setup do
    @res_board = res_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:res_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create res_board" do
    assert_difference('ResBoard.count') do
      post :create, res_board: { address: @res_board.address, phoneNumber: @res_board.phoneNumber, title: @res_board.title }
    end

    assert_redirected_to res_board_path(assigns(:res_board))
  end

  test "should show res_board" do
    get :show, id: @res_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @res_board
    assert_response :success
  end

  test "should update res_board" do
    patch :update, id: @res_board, res_board: { address: @res_board.address, phoneNumber: @res_board.phoneNumber, title: @res_board.title }
    assert_redirected_to res_board_path(assigns(:res_board))
  end

  test "should destroy res_board" do
    assert_difference('ResBoard.count', -1) do
      delete :destroy, id: @res_board
    end

    assert_redirected_to res_boards_path
  end
end
