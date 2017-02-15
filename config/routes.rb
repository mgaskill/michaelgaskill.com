Rails.application.routes.draw do
  get 'about' => "main#about"
  get 'links' => "main#links"
  get 'gandysoft' => "main#gandysoft"

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
