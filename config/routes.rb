Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/show'

  get 'songs/new'

  get 'songs/create'

  get 'songs/edit'

  get 'songs/update'

  get 'songs/destroy'

  get 'artists/index'

  get 'artists/show'

  get 'artists/new'

  get 'artists/create'

  get 'artists/edit'

  get 'artists/update'

  get 'artists/destroy'

	root 'billboards#index'
  resources :billboards

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
