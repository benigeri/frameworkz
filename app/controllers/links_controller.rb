

class LinksController < ApplicationController
  def show
  end

  def new
    @link = Link.new(:title => 'test', :url => 'testurl')
  end

  def create
    @link = Link.new(params[:link])
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