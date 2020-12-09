Rails.application.routes.draw do
  resources :evaluations
  resources :projects
  resources :students
  # get '/'=> 'users#index'
  post '/users' =>'users#create'
  post '/sessions' =>'sessions#create'
  get 'users/logout'
  get 'users/registration'
  get 'users/index'
  get 'home_page/home'
  get 'home_page/faculty'
  get 'home_page/student'
  get 'home_page/about'
  get 'home_page/contact'
  get 'home_page/evaluation'
  resources :student_groups
  get 'static_pages/survey'
  get 'static_pages/surveyForm'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'home_page#home'
  # root 'static_pages#survey'
  root 'users#index'
end
