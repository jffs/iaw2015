class ShoppingCartsController < ApplicationController
  before_filter :extract_shopping_cart

  def create
    @product = Article.find(params[:product_id])
    @shopping_cart.add(@product, @product.precio,1, false)
    redirect_to :back, :notice => "Producto agregado al carrito"
  end

  def destroy
    @product = Article.find(params[:product_id])
    @shopping_cart.remove(@product, 1)
    redirect_to :back 
  end
  
  def show
  end

  private
  
  def extract_shopping_cart
  @cart = ShoppingCart.where(user_id: current_user.id).last

  if @cart 
    @shopping_cart ||= ShoppingCart.find(@cart.id)
    @shopping_cart = nil if PaymentNotification.where(cart_id: @shopping_cart.id).first != nil && PaymentNotification.where(cart_id: @shopping_cart.id).first.status == "Completed"
  end
  
  if @cart.nil? || @shopping_cart.nil?
    @shopping_cart = ShoppingCart.create(user_id: current_user.id)
  end
  @shopping_cart
  end

end
