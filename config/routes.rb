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
	 	resources :documents
  		resources :banks
  		resources :trainings
  		resources :trainers
  		resources :assesments
  		resources :training_events
  		resources :evaluations
  		resources :tasks
  		resources :descussions
  		resources :tickets
  		resources :supports
  		resources :holidays
	 	get "home/index"
	 	root "home#index"
	 	get 'home/payroll_summery'
	end
end
