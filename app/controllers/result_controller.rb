class ResultController < ApplicationController
  def index
    if !params[:subject].blank?
      @courses = Subject.find(params[:subject]).courses
      @courses = @courses.search(params[:search]).order(:Name)
    else 
      @courses = Course.search(params[:search]).order(:Name)
    end

    @subjects = Subject.all.order(:Name)
  end
end
