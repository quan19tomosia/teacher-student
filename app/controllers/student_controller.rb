class StudentController < ApplicationController
  def send_email_to_teacher
    teacher = User.find(params[:teacher_id])
    UserMailer.to_someone(current_user, teacher, params[:message]).deliver_now
    redirect_to root_url
  end
end
