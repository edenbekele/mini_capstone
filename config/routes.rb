Rails.application.routes.draw do
  namespace :api do
    get "/juice_url" => "products#juice_method"
  end
end
