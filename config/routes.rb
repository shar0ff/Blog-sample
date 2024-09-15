Rails.application.routes.draw do

  get '/blog_posts/:id', to: 'blog_posts#show', as: 'blog_post'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "blog_posts#index"
end
