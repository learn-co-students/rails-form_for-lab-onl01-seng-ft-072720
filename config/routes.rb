Rails.application.routes.draw do
  
  resources :school_classes, only: [:index, :new, :create, :show, :edit, :update]

  resources :students, only: [:new, :create, :show, :edit, :update]
  # resources :posts, only: [:index, :show, :new, :create, :edit, :update]

end
