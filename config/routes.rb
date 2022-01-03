Rails.application.routes.draw do
  root "welcome#index"

  get "/articles", to: "articles#index"

  get "/welcome", to: "welcome#index"
end
