# frozen_string_literal: true

class MainController < ApplicationController
  # GET /main
  # GET /main.json
  def index
  end

  def showcase
    page = params[:page] || "main"

    render [:pages, params[:showcase], page].join("/"), formats: [:html], handlers: [:md], status: :ok
  end
end
