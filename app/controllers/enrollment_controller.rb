class EnrollmentController < ApplicationController
  def index
    @enrollment = Enrollment.all
  end

  def new
    @enrollment = Enrollment.new
  end

  def edit
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to home_index_path, notice: 'Enrollment was successfully created.' }
        format.json { render :show, status: :created, location: @enrollment }
      else
        format.html { render :new }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  def enrollment_params
    params.require(:enrollment).permit(:user_id, :course_id)
  end
end
