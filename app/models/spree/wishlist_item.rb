# frozen_string_literal: true

class Spree::WishlistItem < ApplicationRecord
  belongs_to :user
end
