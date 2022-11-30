class AdminsController < ApplicationController
  def add_user_to_course
    user = User.find(params[:user_id])
    course = ClassRoom.find(params[:course_id])

    course.users << user
  end

  def show
    @course = ClassRoom.find(params[:id])
    @tchrs = @course.users.role_teacher
    @students = @course.users.role_student
  end
end
