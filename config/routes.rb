Rails.application.routes.draw do
  namespace :admin do
    resources :maps
    resources :map_types

    get 'map_visual', to: 'static#visual_map'
    get 'welcome', to: 'static#welcome'

    root to: "static#welcome"
  end
end
