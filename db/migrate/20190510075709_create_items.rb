# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.float :quantity, default: 1
      t.references :cart, foreign_key: true, index: true
      t.references :product
    end
  end
end
