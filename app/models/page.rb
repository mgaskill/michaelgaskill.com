class Page < ApplicationRecord
  belongs_to :showcase

  extend FriendlyId
  friendly_id :name, use: [:scoped, :history], scope: :showcase
end
