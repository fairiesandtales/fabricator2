Rails.application.routes.draw do
  namespace :admin do
    resources :maps
    resources :map_types

    root to: "maps#index"
  end
end
