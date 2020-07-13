# frozen_string_literal: true

class Spree::Admin::QuotesController < Spree::Admin::BaseController
  def index
    @quotes = Spree::QuoteHistory.all
  end

  def send_quote
    car = Spree::Product.find(quote_params[:product_id])
    car.send_quote(quote_params[:email])

    redirect_to admin_quotes_path
  end

  private

  def quote_params
    params.require(:quote).permit(:product_id, :email)
  end
end
