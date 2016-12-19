Rails.application.routes.draw do
  resources :group_events, except: [:show, :destroy] do
    get "/deleted" => "group_events#delete"
  end

  namespace :api, defaults: { format: :json } do
    resources :group_events, only: [:index, :show]
  end

  root 'group_events#index'
end
