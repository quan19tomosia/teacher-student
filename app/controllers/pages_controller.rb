class PagesController < ApplicationController
  def home
    # @teachers = User.where(role: 1)
    @courses = ClassRoom.all
    @users = User.where.not(role: 0)
    @user_courses = ClassRoom.joins(:users).where(class_rooms_users: {user_id: current_user.id})
  end
end
