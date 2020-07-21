class CreateSpreeWishlistItems < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_wishlist_items do |t|
      t.integer :product_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
