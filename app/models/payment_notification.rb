class PaymentNotification < ActiveRecord::Base
belongs_to :shopping_cart
serialize :params

end
