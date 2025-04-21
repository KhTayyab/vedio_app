Rails.application.routes.draw do
  root :to => 'video_configrations#index'
  mount ShopifyApp::Engine, at: '/'
  resources :video_configrations do
  	collection do
  		get :get_product_video
  	end
  end
  resources :app_configrations, :except => [:edit, :update, :destroy, :show, :new, :create]

  resources :home, :except => [:edit, :update, :destroy, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
