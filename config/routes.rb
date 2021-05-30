Rails.application.routes.draw do
  get 'home/index'
  devise_for :instructors
  devise_for :users
  resources :projects do
    resources :reports, module: :projects
  end

  root to: "home#index"
end
