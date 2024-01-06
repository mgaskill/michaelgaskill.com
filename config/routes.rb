# frozen_string_literal: true

Rails.application.routes.draw do
  root 'main#index'

  get '/:showcase' => "main#showcase"
  get '/:showcase/:page' => "main#showcase"
end
