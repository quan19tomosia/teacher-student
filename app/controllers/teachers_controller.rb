class TeachersController < ApplicationController
  def send_to_all_students
    @students = User.where(role: 2).includes(:class_rooms_users).where(class_rooms_users: {class_room_id: params[:course_id]})
    if @students
      @students.each do |student|
        UserMailer.to_all_students(current_user, student, params[:message]).deliver_now
      end
    end
    redirect_to root_url
  end
end
