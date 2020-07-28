# frozen_string_literal: true

class Spree::Merchant < ApplicationRecord
  validates :name, :subdomain, presence: true
end
