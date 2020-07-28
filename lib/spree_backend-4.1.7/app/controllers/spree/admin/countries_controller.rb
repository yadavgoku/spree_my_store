# frozen_string_literal: true

module Spree
  module Admin
    class CountriesController < ResourceController
      private

      def collection
        super.order(:name)
      end
    end
  end
end
