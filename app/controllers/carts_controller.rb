# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    render json: cart
  end

  def cart
    @cart ||= Cart.first
  end
end
