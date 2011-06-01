SampleApp::Application.routes.draw do
	#get "users/new" # replaced by the resources
  
   resources :users
  
	match '/signup',  :to => 'users#new'

	match '/contact', :to => 'pages#contact'
	match '/about',   :to => 'pages#about'
	match '/help',    :to => 'pages#help'
	
	#match '/',        :to => 'pages#home'
	root              :to => 'pages#home'
end
