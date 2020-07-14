# frozen_string_literal: true

class Spree::Quote < ApplicationRecord
  after_create :send_email
  belongs_to :product

  def send_email
    QuoteMailer.with(quote: self).send_quote.deliver_now
  end
end
