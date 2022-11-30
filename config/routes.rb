Rails.application.routes.draw do
  get 'student/send'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  get "/student_send_email_to_teacher" => "student#send_email_to_teacher"
  get "/send_to_all_students" => "teachers#send_to_all_students"
  get "/add_user_to_course" => "admins#add_user_to_course"
  get '/course/:id' => "admins#show", as: 'course'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
