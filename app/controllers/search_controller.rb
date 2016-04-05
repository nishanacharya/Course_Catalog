class SearchController < ApplicationController
  def index
    if !params[:subject].blank?
      @courses = Subject.find(params[:subject]).courses
      @courses = @courses.search(params[:search]).order(:Name)
    else 
      @courses = Course.search(params[:search]).order(:Name)
    end

    if params[:subject].blank? && params[:search].blank?
      @criteria = false
    else 
      @criteria = true
    end

    @subjects = Subject.all.order(:Name)
    
    respond_to do |format|
      format.html
      format.js
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
