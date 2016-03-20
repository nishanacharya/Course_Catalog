class SearchController < ApplicationController
  def index
    if params[:search]
      @courses = Course.search(params[:search]).order("created_at DESC")
    end
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
