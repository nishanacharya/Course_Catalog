class SearchController < ApplicationController
  def index
    @subjects = Subject.all.order(:Name)

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
