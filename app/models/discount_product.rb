# frozen_string_literal: true

class DiscountProduct < ApplicationRecord
  belongs_to :discount
  belongs_to :product
end
