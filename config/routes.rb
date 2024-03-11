Rails.application.routes.draw do
  root 'static_pages#top'
  resource :static_pages, only: %i[top]

  get 'login', to: 'user_sessions#new', :as => :login
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :how_to_plays, only: %i[index]
  resource :profiles, only: %i[show edit update]
  resources :password_resets, only: %i[create edit update new]

  resources :users, only: %i[new create]

  resources :boards do
    resource :like, only: %i[create destroy]
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
