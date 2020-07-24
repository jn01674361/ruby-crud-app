class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    entry = Entry.create(entry_params)

    redirect_to entries_path
  end
  
  def edit
    @entry = Entry.find(params[:id])
  end
  
  def update
    @entry = Entry.find(params[:id])
    @entry.update(entry_params)
    
    redirect_to entries_path(@entry)
  end

  private

  def entry_params
    params.require(:entry).permit(:name, :score, :date)
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to entries_path
  end
end
