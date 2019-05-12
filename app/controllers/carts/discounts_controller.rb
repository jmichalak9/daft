# frozen_string_literal: true

module Carts
  class DiscountsController < ApplicationController
    def create
      cart.discounts.create!(discount_params)
      render json: cart, status: 201
    end

    def update
      discount.update!(discount_params)
      render json: cart, status: 201
    end

    private

    def discount
      @discount ||= cart.discounts.find(params[:id])
    end

    def cart
      if Cart.any?
        Cart.first
      else
        Cart.create
      end
    end

    def discount_params
      params.permit(:kind, :name, :price, :count, product_ids: [])
    end
  end
end
