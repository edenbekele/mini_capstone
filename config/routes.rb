Rails.application.routes.draw do
  namespace :api do
    get "/juice1_url" => "products#juice1_method"
    get "/all_juices_url" => "products#all_juices_action"
  end
end
