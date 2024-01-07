Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :todos, only: [:index, :create, :destroy]
  # -------- ここから追記 --------
    resources :users, only: [:index, :create]
  # -------- ここまで追記 --------
  end
end
