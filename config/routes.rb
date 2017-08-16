Rails.application.routes.draw do

  get 'instapics/index'

  get 'instapics/show'

	root :to => 'static#index'

  namespace :api do
    get 'instagram/index', to: 'instagram#index'
  end


  namespace :api do
    resources :testimonials
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
