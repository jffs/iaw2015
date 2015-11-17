class ShoppingCart < ActiveRecord::Base
  acts_as_shopping_cart

  def paypal_url(return_url,notify_url)
    values ={
        :business => 'admin@ing.com',
        :cmd => '_cart',
        :upload => 1,
        :currency_code => 'ARS',
        :invoice => id,
        :return => return_url,
        :notify_url => notify_url

    }
    shopping_cart_items.each_with_index do |item, index|
        values.merge!({
            "amount_#{index+1}" => item.price,
            "item_name_#{index+1}" => Article.where(id: item.item_id).first.nombre,
            })
    end
    "https://www.sandbox.paypal.com/cgi-bin/webscr?"+values.map{|k,v| "#{k}=#{v}"}.join("&")
end
 
end