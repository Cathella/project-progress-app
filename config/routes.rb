Rails.application.routes.draw do
  resources :projects do
    resources :reports, module: :projects
  end

  root to: "projects#index"
end
