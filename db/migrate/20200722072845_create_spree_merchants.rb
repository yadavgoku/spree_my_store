class CreateSpreeMerchants < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_merchants do |t|
      t.string :name, unique: true, null: false
      t.string :subdomain, unique: true, null: false

      t.timestamps
    end
  end
end
