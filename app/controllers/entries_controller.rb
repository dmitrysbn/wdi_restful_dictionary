class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :index
  end

  def show
    render :show
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect to entries_url
    else
      redirect to new_entry_url
    end
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
