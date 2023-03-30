# frozen_string_literal: true

class Showcase < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :history

  has_many :pages, dependent: :destroy
end
