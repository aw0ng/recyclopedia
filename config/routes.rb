Rails.application.routes.draw do
  namespace :api do
    get "/donors" => "donors#index"
    post "/donors" => "donors#create"
    get "/donors/:id" => "donors#show"
    patch "/donors/:id" => "donors#update"
    delete "/donors/:id" => "donors#destroy"
    
    get "/items" => "items#index"
    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"
  end
end
