Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :update, :destroy]
    resource :session, only: [:create, :destroy]
    resources :genres, only: [:index]
    resources :series, only: [:show, :create]
    resources :episodes, only: [:show, :index]
    resources :favorites, only: [:index, :create, :destroy]
    get 'search/' => 'series#search', as: :search_series
  end
end
