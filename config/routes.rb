Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :blogs, only: [:index, :show] do
        resources :posts, only: [:index]
      end
      
      resources :users, only: [:index, :show] do
        resources :posts, only: [:index]
      end
    end
  end
end
