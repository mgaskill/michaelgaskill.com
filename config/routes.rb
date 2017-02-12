Rails.application.routes.draw do
  get 'main' => "main#index"
  get 'links' => "main#links"
#  resource :main

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
