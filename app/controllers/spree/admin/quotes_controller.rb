# frozen_string_literal: true

class Spree::Admin::QuotesController < Spree::Admin::BaseController
  def index
    @quotes = Spree::Quote.all
    @option_type = Spree::OptionType.find_by(name: 'location')
  end

  def create
    car = Spree::Product.find(quote_params[:product_id])
    variant = car.variant(quote_params[:location_id])
    location = Spree::OptionType.find_by(name: 'location')
                                .option_values.find_by(id: quote_params[:location_id]).presentation
    if variant

      quote = Spree::Quote.new(
        to: quote_params[:email],
        location: location,
        ex_showroom_price: variant.price,
        product_id: car.id
      )
      if quote.save
        redirect_to admin_quotes_path, notice: 'Quote successfuly created'
      else
        redirect_to admin_quotes_path, notice: 'Oops..Something went wrong'
      end
    else
      redirect_to admin_quotes_path,
                  notice: "Sorry this model is not available at #{location}"
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:product_id, :email, :location_id)
  end
end
