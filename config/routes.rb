Rails.application.routes.draw do
  namespace :api do
    get "/donors" => "donors#index"
    post "/donors" => "donors#create"
    get "/donors/:id" => "donors#show"
    patch "/donors/:id" => "donors#update"
    delete "/donors/:id" => "donors#destroy"
  end
end
