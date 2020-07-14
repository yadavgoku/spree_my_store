# frozen_string_literal: true

module Spree::ProductDecorator
  def self.prepended(base)
    base.has_many :quotes
  end

  def variant(location_id)
    variants.each do |variant|
      @value = variant.option_values.find_by(id: location_id)
      return variant if @value
    end
    return if @value
  end
end
::Spree::Product.prepend(Spree::ProductDecorator)
