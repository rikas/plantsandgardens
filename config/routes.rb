Rails.application.routes.draw do
  root to: 'gardens#index'

  resources :gardens, only: %i[index show new create] do
    resources :plants, only: %i[new create]
  end

  resources :plants, only: %i[destroy] do
    # collection do
    #   get :beautiful
    # end

    # member do
    #   # get :date # /plants/:id/date => 'plants#date'
    #   # get :toggle
    # end
  end
end

# %w[one two three] => ['one', 'two', 'three']
# %i[one two three] => [:one, :two, :three]
