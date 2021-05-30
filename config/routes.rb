Rails.application.routes.draw do
  devise_for :instructors
  devise_for :users
  resources :projects do
    resources :reports, module: :projects
  end

  root to: "projects#index"
end
