class Showcase < ApplicationRecord
  has_many :pages

  extend FriendlyId
  friendly_id :name, use: :history
end
