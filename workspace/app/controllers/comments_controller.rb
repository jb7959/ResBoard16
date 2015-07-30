class CommentsController < ApplicationController
  before_action :set_res_board
  before_action :set_comment, only: :destroy

  def create
    @comment = @res_board.comments.new(comment_params)
    @comment.save
  end

  def destroy
    @comment.destroy
  end

  private
  
  def set_res_board
    @res_board = ResBoard.find(params[:res_board_id])
   
  end

  def set_comment
    @comment = @res_board.comments.find(params[:id])
    
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end