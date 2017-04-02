Rails.application.routes.draw do
  resources :examinations do
  	member do #makes the repor function apply to an individual examination and not the whole group
  		get 'report'
  	end
  end
  devise_for :users
  get 'welcome/index'
  root 'examinations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
