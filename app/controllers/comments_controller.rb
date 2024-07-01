class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
     redirect_to "/kotobas/#{comment.kotoba.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, kotoba_id: params[:kotoba_id])
  end
end
