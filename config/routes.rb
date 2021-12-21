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

    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"

    get "/receivers" => "receivers#index"
    get "/receivers/:id" => "receivers#show"

    get "/donations" => "donations#index"
    get "/donations/:id" => "donations#show"
  end
end
