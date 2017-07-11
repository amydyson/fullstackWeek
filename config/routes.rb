Rails.application.routes.draw do

  get 'user/create'

  get 'user/update'

  get 'user/delete'

  get 'user/confirmation'

  # post 'register' => 'user#register'

  post 'user/register' => 'user#register'

  get 'user/login'

  # get 'user/welcome'

  post 'user/welcome'

  root 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
