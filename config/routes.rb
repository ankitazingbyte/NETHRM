Rails.application.routes.draw do
<<<<<<< HEAD
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
=======
devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :admin do
	 	resources :departments
>>>>>>> 68f4d19c3dfcfd10a5f5b068d94e9e072a19dfdb
	 	get "home/index"
	 	root "home#index"
	end
end
