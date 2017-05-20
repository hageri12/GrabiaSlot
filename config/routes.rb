Rails.application.routes.draw do
  root 'blogs#index'
  get'login' => 'blogs#login'
  get'new'=>'blogs#new'
  get'destroy'=>'blogs#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
