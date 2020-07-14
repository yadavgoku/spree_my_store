class CreateSpreeQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_quotes do |t|
      t.string :to, null: false
      t.string :location
      t.decimal :ex_showroom_price, null: false, precision: 15, scale: 2, default: 0
      t.string :status, default: 'initiated'
      t.integer :product_id, null: false

      t.timestamps
    end
  end
end
