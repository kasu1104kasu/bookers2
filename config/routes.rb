Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:show, :index, :edit, :update]
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
end
