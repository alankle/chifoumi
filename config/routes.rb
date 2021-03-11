Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/chifoumis' => 'chifoumi#new'
      get '/chifoumis/:name/:move' => 'chifoumi#new' # for test purspose only
      get '/chifoumis/score/' => 'chifoumi#index'
    end
  end
end
