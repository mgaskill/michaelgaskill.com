Rails.application.routes.draw do
  get '/:showcase' => "main#showcase"
  get '/:showcase/:page' => "main#showcase"

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
