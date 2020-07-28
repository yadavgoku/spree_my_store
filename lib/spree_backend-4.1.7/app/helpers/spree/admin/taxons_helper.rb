# frozen_string_literal: true

module Spree
  module Admin
    module TaxonsHelper
      def taxon_path(taxon)
        taxon.ancestors.reverse.map(&:name).join(' >> ')
      end
    end
  end
end
