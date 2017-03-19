Rails.application.routes.draw do
  resources :workshops do
    get :info, :on => :collection
  end
  resources :news do
    get :info, :on => :collection
  end
  	get 'pages/index'
 	root 'pages#index'
  match 'contact' => 'pages#contact', via: [:get, :post]
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
      get :details, :on => :collection
  end
  resources :pages do
    get :contact, :on => :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
