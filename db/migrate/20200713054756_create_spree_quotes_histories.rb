class CreateSpreeQuotesHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_quotes_histories do |t|
      t.string :to, null: false
      t.string :car, null: false
      t.string :status, default: 'sent'
      t.integer :quote_id, null: false

      t.timestamps
    end
  end
end
