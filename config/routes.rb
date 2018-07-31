Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}
  namespace :admin do
    resources :users, except: :destroy
    resources :assessments
  end
  resources :questions
  resources :categories
end
