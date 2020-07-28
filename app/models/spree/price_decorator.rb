# frozen_string_literal: true

module Spree::PriceDecorator
  def total_price
    [amount, rto, insurance, others].sum
  end
end
::Spree::Price.prepend(Spree::PriceDecorator)
