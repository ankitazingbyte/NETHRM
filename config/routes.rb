Rails.application.routes.draw do
	root "admin/home#index"
  	devise_for :users
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :admin do
	 	resources :departments
	 	resources :designations
	 	resources :jobapps
	 	resources :leaves
	 	resources :awards
	 	resources :notices
	 	resources :expenses
	 	resources :increaments
	 	resources :salslips
	 	resources :funds
	 	resources :loans
	 	resources :employees
	 	get "home/index"
	 	root "home#index"
	end
end
