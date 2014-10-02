class EnrollmentsController < ApplicationController

  def new
    @students = Student.all
    @courses = Course.all
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.enrollment_date = DateTime.now

    if @enrollment.save
      redirect_to courses_path, notice: 'Enrollment was successfully created.'
    else
      redirect_to new_enrollment_path , notice: "please select student and course"
    end
  end

  private
    def enrollment_params
      params.require(:enrollment).permit(:student_id, :course_id)
    end
end
