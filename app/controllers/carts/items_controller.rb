# frozen_string_literal: true

module Carts
  class ItemsController < ApplicationController
    def create
      cart.items.create!(item_params)
      render json: cart, status: 201
    end

    def update
      item.update!(item_params)
      render json: cart, status: 201
    end

    private

    def item
      @item ||= cart.items.find(params[:id])
    end

    def cart
      if Cart.any?
        Cart.first
      else
        Cart.create
      end
    end

    def item_params
      params.permit(:quantity, :product_id)
    end
  end
end
