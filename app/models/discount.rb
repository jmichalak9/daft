# frozen_string_literal: true

class Discount < ApplicationRecord
  KINDS = %w[set extra].freeze

  belongs_to :cart
  has_many :discount_products
  has_many :products, through: :discount_products

  validates :kind, inclusion: { in: KINDS }
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, allow_blank: true
  validates :count, numericality: { greater_than_or_equal_to: 0 }, allow_blank: true
end
