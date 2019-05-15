Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews do
    end
  end
end
