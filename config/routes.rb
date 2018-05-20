Rails.application.routes.draw do
  resources :lectures
  resources :courses
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lectures do 
    member do
      put "like", to: "lectures#upvote"
      put "dislike", to: "lectures#downvote"
    end
  end
  mount Commontator::Engine => '/commontator'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
