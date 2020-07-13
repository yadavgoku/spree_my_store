# frozen_string_literal: true

class Spree::Admin::QuotesController < ApplicationController
  def index
    @quotes = Spree::QuotesHistory.all
  end

  def send_quote
    car = Spree::Car.find(quote_params[:car_id])
    car.send_quote(quote_params[:email])

    redirect_to admin_quotes_path
  end

  private

  def quote_params
    params.require(:quote).permit(:car_id, :email)
  end
end
