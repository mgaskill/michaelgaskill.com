# frozen_string_literal: true

json.extract! main, :id, :created_at, :updated_at
json.url main_url(main, format: :json)
