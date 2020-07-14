# frozen_string_literal: true

class QuoteMailer < ApplicationMailer
  def send_quote
    @quote = params[:quote]
    @email = @quote.to
    @car = @quote.product
    mail(to: @email, subject: 'Mini shop login with otp')
  end
end
