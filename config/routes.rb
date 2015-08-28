Rails.application.routes.draw do
  # get 'readers/new'

  get "/register", to: "readers#new", as: "register"
end
