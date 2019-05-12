# frozen_string_literal: true

class CreateDiscountProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :discount_products do |t|
      t.references :product, foreign_key: true, index: true
      t.references :discount, foreign_key: true, index: true
    end
  end
end
