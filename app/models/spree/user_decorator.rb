# frozen_string_literal: true

module Spree::UserDecorator
  def self.prepended(base)
    base.has_many :wishlist_items
  end
end
::Spree::User.prepend(Spree::UserDecorator)
