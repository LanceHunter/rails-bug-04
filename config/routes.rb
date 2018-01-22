Rails.application.routes.draw do
  root "task_lists#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  post "tasks" => "tasks#create"

  resources :task_lists, only: [] do
    resources :tasks
  end
end
