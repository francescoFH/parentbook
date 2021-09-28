Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  root to: 'pages#index'

  resources :posts do
    collection do
      get 'cat1'
      get 'cat2'
      get 'cat3'
    end
  end
end
