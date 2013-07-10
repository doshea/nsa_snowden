NsaSnowden::Application.routes.draw do
  root :to => 'sightings#index'
  resources :sightings, only: [:show, :index, :new, :edit, :create, :update] do
    collection do
      get :whatever
    end
  end
end
