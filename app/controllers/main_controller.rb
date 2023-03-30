# frozen_string_literal: true

class MainController < ApplicationController
  # GET /main
  # GET /main.json
  def index
  end

  def showcase
    @showcase = Showcase.friendly.find(params[:showcase])
    page = params[:page]

    redirect_to "/#{@showcase.slug}" if page == "main"

    @page = @showcase.pages.friendly.find(page || "main")
  end
end
