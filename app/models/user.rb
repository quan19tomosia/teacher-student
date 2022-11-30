class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: {admin: 0, teacher: 1, student: 2}, _prefix: :role

  has_and_belongs_to_many :class_rooms
end
