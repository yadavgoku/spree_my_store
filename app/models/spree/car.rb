# frozen_string_literal: true

class Spree::Car < ApplicationRecord
  after_create :build_quote
  has_one :quote

  def build_quote
    Spree::Quote.create(car_id: id)
  end

  def send_quote(email)
    QuoteMailer.with(car: self, email: email).send_quote.deliver_now
    Spree::QuotesHistory.create(to: email, car: name, quote_id: quote.id)
  end
end
