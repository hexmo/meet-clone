# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index' # Defines the root path route ("/")
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
