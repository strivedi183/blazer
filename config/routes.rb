Blazer::Engine.routes.draw do
  resources :queries, except: [:index] do
    post :run, on: :collection # err on the side of caution
  end
  resources :checks, only: [:index, :new]
  root to: "queries#index"
end
