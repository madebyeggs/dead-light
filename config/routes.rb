Rails.application.routes.draw do
  root 'home#index'
  
  match 'releases/release_show_via_ajax_call' => 'releases#release_show_via_ajax_call', via: [:get, :post]
  
  resources :releases
end
