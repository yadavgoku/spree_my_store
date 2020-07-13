class CreateSpreeQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_quotes do |t|
      t.decimal :ex_showroom_price, null: false, precision: 15, scale: 2, default: 0
      t.decimal :rto, null: false, precision: 15, scale: 2, default: 0
      t.decimal :insurance, null: false, precision: 15, scale: 2, default: 0
      t.integer :car_id, null: false

      t.timestamps
    end
  end
end
