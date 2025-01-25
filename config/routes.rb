# frozen_string_literal: true

Rails.application.routes.draw do
  concern :base_api do
    post "/users/register", to: "users#register"
    post "/users/login", to: "users#login"
    get "/users/test", to: "users#test"
    post "notifications/send_email", to: "notifications#send_email"
  end

  namespace :v1 do
    concerns :base_api
  end
end
