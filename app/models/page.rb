# frozen_string_literal: true

class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:scoped, :history], scope: :showcase

  belongs_to :showcase, dependent: :destroy
end
