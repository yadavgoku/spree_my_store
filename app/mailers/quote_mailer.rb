# frozen_string_literal: true

class QuoteMailer < ApplicationMailer
  def send_quote
    @email = params[:email]
    @car = params[:car]
    @quote = @car.quote
    mail(to: @email, subject: 'Mini shop login with otp')
  end
end
