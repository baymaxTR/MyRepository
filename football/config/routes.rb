Rails.application.routes.draw do
  devise_for :users
  get 'premierleagues/new'

  get 'premierleagues/create'

  get 'premierleagues/update'

  get 'premierleagues/edit'

  get 'premierleagues/destroy'

  get 'premierleagues/index'

  get 'premierleagues/show'

  get 'pitches/new'

  get 'pitches/create'

  get 'pitches/update'

  get 'pitches/edit'

  get 'pitches/destroy'

  get 'pitches/index'

  get 'pitches/show'

  get 'sponsors/new'

  get 'sponsors/create'

  get 'sponsors/update'

  get 'sponsors/edit'

  get 'sponsors/destroy'

  get 'sponsors/index'

  get 'sponsors/show'

  get 'coaches/new'

  get 'coaches/create'

  get 'coaches/update'

  get 'coaches/edit'

  get 'coaches/destroy'

  get 'coaches/index'

  get 'coaches/show'

  get 'soccers/new'

  get 'soccers/create'

  get 'soccers/update'

  get 'soccers/edit'

  get 'soccers/destroy'

  get 'soccers/index'

  get 'soccers/show'

  get 'about/index'

  root 'soccers#index'

  get 'about' => 'about#index'

  resources :soccers
  resources :coaches
  resources :sponsors
  resources :pitches
  resources :premierleagues

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
