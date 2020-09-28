Rails.application.routes.draw do
  resources :students, only: [:index, :show, :create, :new, :edit, :update]
  patch 'students/:id', to: 'students#update'
  resources :school_classes, only: [:index, :show, :create, :new, :edit, :update]
  patch 'school_classes/:id', to: 'school_classes#update:'
end