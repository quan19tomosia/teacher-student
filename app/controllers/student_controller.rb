class StudentController < ApplicationController
  def send_email_to_teacher
    @teachers = User.role_teacher.includes(:class_rooms_users).where(class_rooms_users: { class_room_id: params[:course_id]})
    if @teachers.any?
      @teachers.each do |teacher|
        UserMailer.to_someone(current_user, teacher, params[:message]).deliver_now
      end
    end
    redirect_to root_url
  end
end
