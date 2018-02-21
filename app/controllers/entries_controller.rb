class EntriesController < ApplicationController

  def index
    render :index
  end

  def show
    # render :show
  end

  def new

  end

  def create
    redirect_to entries_url
  end

  def edit

  end

  def update
    redirect_to entry_url(params[:id])
  end

  def destroy
    redirect_to entries_url
  end

end
