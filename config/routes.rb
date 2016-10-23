Rails.application.routes.draw do
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'create_new_lighter' }
  root 'home#index'
  
  match 'releases/release_show_via_ajax_call' => 'releases#release_show_via_ajax_call', via: [:get, :post]
  
  resources :releases
end
