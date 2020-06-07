Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create] do
  end
  # get 'posts/index'
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
