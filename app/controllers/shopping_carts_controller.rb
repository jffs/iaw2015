class ShoppingCartsController < ApplicationController
  before_filter :extract_shopping_cart

  def create
    @product = Article.find(params[:product_id])
    @shopping_cart.add(@product, @product.precio)
  end

  def destroy
    @item=Article.find(params[:product_id])
    @shopping_cart.remove(@item, 1)
    redirect_to :back 
  end
  
  def show

  end

  private
  def extract_shopping_cart
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
  end
end