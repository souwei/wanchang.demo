Rails.application.routes.draw do
  mount Flipflop::Engine => "/flipflop"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :patients do
    resources :patient_notes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
