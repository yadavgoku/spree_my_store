# frozen_string_literal: true

class Spree::Frontend::WishlistItemsController < Spree::BaseController
  before_action :set_wishlist_item, only: :destroy

  def create
    wishlist_item = spree_current_user.wishlist_items
                                      .new(product_id: params[:product_id])
    Rails.cache.clear

    if wishlist_item.save
      redirect_to product_path(params[:product_id])
    else
      redirect_to product_path(params[:product_id])
    end
    end

  def destroy
    wishlist_item = @wishlist_item
    Rails.cache.clear

    if @wishlist_item.destroy
      redirect_back fallback_location: products_path
    else
      redirect_back fallback_location: products_path
    end
  end

  private

  def set_wishlist_item
    @wishlist_item = spree_current_user.wishlist_items.find(params[:id])
    end

  def wishlist_item_params
    params.require(:wishlist_item).permit(
      :id, :product_id, :user_id
    )
  end
end
