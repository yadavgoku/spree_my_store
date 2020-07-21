class AddPriceFieldsToSpreePrices < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_prices, :rto, :decimal, null: false, precision: 15, scale: 2, default: 0
    add_column :spree_prices, :insurance, :decimal, null: false, precision: 15, scale: 2, default: 0
    add_column :spree_prices, :others, :decimal, null: false, precision: 15, scale: 2, default: 0
  end
end
