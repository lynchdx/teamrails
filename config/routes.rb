Rails.application.routes.draw do
  resources :teachers
  resources :subjects
  resources :students
  resources :sections
  resources :days
  resources :assitances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
