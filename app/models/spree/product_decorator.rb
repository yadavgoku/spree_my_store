# frozen_string_literal: true

module Spree::ProductDecorator
  def self.prepended(base)
    base.after_create :build_quote
    base.has_one :quote
  end

  def build_quote
    Spree::Quote.create(product_id: id)
  end

  def send_quote(email)
    QuoteMailer.with(car: self, email: email).send_quote.deliver_now
    Spree::QuoteHistory.create(to: email, car: name, quote_id: quote.id)
  end
end
::Spree::Product.prepend(Spree::ProductDecorator)
