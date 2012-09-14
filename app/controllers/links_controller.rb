class LinksController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    @link.voteCount = 0

    respond_to do |format|
      if @link.save
        format.html { render :action => "create" }
        format.json { render :json => @link }
      else
        format.html { render :action => "new" }
        format.json { render :json => @product.errors, :status => :unprocessable_entity }
      end
    end
  end
end