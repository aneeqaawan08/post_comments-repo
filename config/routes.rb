Rails.application.routes.draw do
  
  
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
     get 'users/active', to: 'users#active'
     get 'users/inactive', to: 'users#inactive'
    #  get 'approve', to: 'users#approve'
   root 'home#index'
  
   resources :users, only: [:show, :index,:edit,:update] do
    member do
      get :approve
    end
  end
     
   resources :posts and resource :post do
    member do
      get :approve
    end
     resources :comments

   end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
