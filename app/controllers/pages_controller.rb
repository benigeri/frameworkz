class PagesController < ApplicationController
  def index
    params[:per_page] ||= 5
    params[:page]     ||= 1

    @links = Link.order('"voteCount" DESC').paginate(:page => params[:page], :per_page => params[:per_page])

  end
end
