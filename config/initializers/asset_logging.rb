# frozen_string_literal: true

if Rails.env.development?
  # Configure logging for the asset pipeline for debugability
  Rails.application.config.assets.logger = Logger.new($stdout)
end
