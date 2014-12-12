class Transaction < ActiveRecord::Base
  belongs_to :user
   attr_accessor :cardCVV, :cardExpiryMonth, :cardExpiryYear, :nombre, :apellido, :dni 

end
