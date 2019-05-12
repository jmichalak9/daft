# frozen_string_literal: true

class DiscountSerializer < ActiveModel::Serializer
  attributes :id, :kind, :name, :count, :price, :product_ids
end
