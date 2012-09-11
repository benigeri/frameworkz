class CommentsController < ApplicationController

  before_filter :authenticate_user!

  # user creates a comment, then instead of going to another, redirects to view just takes him back to the page where he added the comment
  def create
    @comment = current_user.comments.create(params[:comment])
    redirect_to :back
  end

end