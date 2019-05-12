# frozen_string_literal: true

class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.string :kind, null: false
      t.string :name, index: { unique: true }
      t.float :price
      t.integer :count
      t.references :cart, foreign_key: true
      t.timestamps
    end
  end
end
