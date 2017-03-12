Rails.application.routes.draw do
  	get 'pages/index'
 	root 'pages#index'
  namespace :admin do
  	resources :reports do
   		post :get_students_list, :on => :collection
  		get :update, :on => :member
  		get :index, :on => :member
  		post :upload, :on => :collection
	 end
  end
  resources :students do
      get :reports, :on => :collection
      get :index, :on => :member
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
