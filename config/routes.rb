Rails.application.routes.draw do
  get 'sessions/new'
  get "/home" , to: "pages#home"
  get "/broken_moon" , to: "pages#broken_moon"
  get "/worlds_edge" , to: "pages#worlds_edge"
  get "/storm_point" , to: "pages#storm_point"
  get "/olympus" , to: "pages#olympus"
  get "/kings_canyon" , to: "pages#kings_canyon"
  get "/stages" , to: "pages#stages"
  get  "/new",  to: "legends#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  root "pages#home"
  resources :legends
end
