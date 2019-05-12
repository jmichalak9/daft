# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :product
  belongs_to :cart
  belongs_to :product

  def product
    {
      id: object.product.id,
      name: object.product.name,
      price: object.product.price
    }
  end
end
