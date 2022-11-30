class PagesController < ApplicationController
  def home
    # @teachers = User.where(role: 1)
    @courses = ClassRoom.all
    @users = User.where.not(role: 0)
    @user_courses = ClassRoom.joins(:users).where(class_rooms_users: {user_id: current_user.id})
    @teachers = []
    @user_courses.each do |user_course|
      @teachers << User.role_teacher.joins(:class_rooms).where(class_rooms_users: {class_room_id: user_course.id})
    end
    @teachers.flatten!
  end
end
