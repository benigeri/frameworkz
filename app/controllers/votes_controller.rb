class VotesController < ApplicationController

  before_filter :authenticate_user!

  # user creates a comment, then instead of going to another, redirects to view just takes him back to the page where he added the comment
  def create
    @vote = current_user.votes.create(params[:vote])
    redirect_to :back
  end

end